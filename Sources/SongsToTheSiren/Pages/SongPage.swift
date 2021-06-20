import Foundation
import Parsing

struct SongPage: Page {
    let fileUtils: FileUtils
    let song: Song
    let songMap: [String: SongList.SongMap]

    private enum NavLocation: String {
        case top
        case bottom
    }

    private enum NavDir: String {
        case older
        case newer
    }

    var markdownNames = ["summary", "article"]

    func dirPath() -> [String] { ["song"] }
    func filename() -> String { "\(song.dir)" }

    func validate() {
        song.links.forEach { link in
            if case .song(let songDir) = link.linkType {
                if songMap[songDir] == nil {
                    // Need to find a way to turn this into a compile-time check
                    // The circular song refs is making this not immediately obvious to me.
                    fatalError("Song \(song.title) has link to bad song dir \(songDir)")
                }
            }
        }
    }

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        .section(attributes: [.class("song row")],
            songNavigation(location: .top),
            panelHeader(song),
            songArticle(markdown: markdown),
            makeSongLinks(),
            makeSongFooter(),
            songNavigation(location: .bottom)

        )
    }

    private func songArticle(markdown: [String : HtmlNode]) -> HtmlNode {
        guard let summary = markdown["summary"] else {
            fatalError("Bad summary markdown for song \(song.title)")
        }
        guard let defaultLink = song.links.find(id: "default") else {
            fatalError("No 'default' link for song \(song.title)")
        }
        guard let article = markdown["article"] else {
            fatalError("Bad article markdown for song \(song.title)")
        }

        return .div(attributes: [.class("description col-12")],
            summary,
            defaultLink.renderEmbedded(),
            resolveShortcuts(article)
        )
    }

    func pageTitle() -> String {
        song.title
    }

    private func songNavigation(location: NavLocation) -> HtmlNode {
        .nav(
            songNavLink(songMap[song.dir]?.newer, direction: .newer),
            songNavLink(songMap[song.dir]?.older, direction: .older),
            .p(attributes: [.class("clear-both")])
        )
    }

    private func songNavLink(_ song: Song?, direction: NavDir) -> HtmlNode {
        guard let song = song else {
            return .fragment([])
        }

        let cssClass: String
        let label   : String
        switch direction {
        case .newer:
            cssClass = "float-left"
            label    = "«"
        case .older:
            cssClass = "float-right"
            label    = "»"
        }
        return .p(
            attributes:[.class(cssClass)],
            .text("\(label) "),
            .a(
                attributes: [.href("/song/\(song.dir).html")],
                .text(song.title)
            ),
            .text(" \(label)")
        )
    }

    private func makeSongLinks() -> HtmlNode {
        guard !song.links.isEmpty else {
            return .fragment([])
        }

        return .div(attributes: [.class("links")],
            .h4("Links"),
            .p(
                .ul(attributes: [.class("link-list")],
                    .fragment(song.links.map { $0.renderInList() })
                )
            )
        )
    }

    private func makeSongFooter() -> HtmlNode {
        .footer(attributes: [.class("col-12")],
            makeSongTags(),
            makeMetadata(song)
        )
    }

    private func makeSongTags() -> HtmlNode {
        guard !song.tags.isEmpty else {
            return .fragment([])
        }

        return .p(attributes: [.class("song-tags")],
            .text("Tags: "),
            .fragment(song.tags.map { tag in
                .a(
                    attributes: [
                        .class("btn btn-outline-secondary btn-sm song-tag"),
                        .href("/tag/\(tag).html"),
                        .role(.button),
                    ],
                    .text(tag.rawValue)
                )
            }),
            .fragment(song.country.map { country in
                .a(
                    attributes: [
                        .class("btn btn-outline-secondary btn-sm song-tag"),
                        .href("/country/\(country).html"),
                        .role(.button),
                    ],
                    .text(country.rawValue)
                )
            })

        )
    }

    private func resolveShortcuts(_ node: HtmlNode) -> HtmlNode {
        switch node {
        case .comment:
            return node

        case .doctype:
            return node

        case let .element(tag, attrs, child):
            return .element(tag, attrs, resolveShortcuts(child))

        case let .fragment(children):
            return .fragment(children.map(resolveShortcuts))

        case let .raw(string):
            return applyShortcut(string)

        case let .text(string):
            return applyShortcut(string)
        }
    }

    private func applyShortcut(_ original: String) -> HtmlNode {
        var result = [HtmlNode]()

        let parser = PrefixUpTo("^")
            .skip(StartsWith("^"))
            .take(Prefix { $0 != "("}) // type
            .skip(StartsWith("("))
            .take(Prefix { $0 != ")"})
            .skip(StartsWith(")"))

        var parseString = original[...]
        while let (leader, type, code) = parser.parse(&parseString) {
            guard let replacer = LinkReplacer(rawValue: String(type)) else {
                print("** Unknown shortcut type \(type)")
                break
            }

            result.append(.text(String(leader)))
            result.append(replacer.newHtml(for: String(code), song: song))
        }
        result.append(.text(String(parseString)))

        return .fragment(result)
    }
}
