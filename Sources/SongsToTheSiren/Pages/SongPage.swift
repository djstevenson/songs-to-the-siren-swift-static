import Foundation
import Parsing

struct SongPage: Page {
    let fileUtils: FileUtils
    let song: Song
    let songMap: SongList.SongMap

    private enum NavLocation: String {
        case top
        case bottom
    }

    private enum NavDir: String {
        case older
        case newer
    }

    var markdownNames = ["summary", "article"]

    func dirPath() -> [String] {
        ["song", song.dir]
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
        return .div(attributes: [.class("description col-12")],
            markdown["summary"]!,
            song.links.find(id: "default")!.renderEmbedded(),
            resolveShortcuts(markdown["article"]!)
        )
    }

    func pageTitle() -> String {
        song.title
    }

    private func songNavigation(location: NavLocation) -> HtmlNode {
        .nav(
            attributes: [.class("col-12 nav-location-\(location.rawValue)")],
            songNavLink(songMap.newer[song.id], direction: .newer),
            songNavLink(songMap.older[song.id], direction: .older)
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
            cssClass = "float-md-left float-sm-none"
            label    = "«"
        case .older:
            cssClass = "float-md-right float-sm-none"
            label    = "»"
        }
        return .p(
            attributes:[.class(cssClass)],
            .text("\(label) "),
            .a(
                attributes: [.href("/song/\(song.dir)/")],
                .text(song.title)
            ),
            .text(" \(label)")
        )
    }

    private func makeSongLinks() -> HtmlNode {
        guard song.links.count > 0 else {
            return .fragment([])
        }

        return .div(attributes: [.class("links")],
            .h4("Links"),
            .p(
                .ul(attributes: [.class("link-list")],
                    .fragment(song.links.map  { $0.renderInList() })
                )
            )
        )
    }

    private func makeSongFooter() -> HtmlNode {
        .footer(attributes: [.class("col-12")],
            makeSongTags()
        )
    }

    private func makeSongTags() -> HtmlNode {
        guard song.tags.count > 0 else {
            return .fragment([])
        }

        return .p(attributes: [.class("song-tags")],
            .text("Tags: "),
            .fragment(song.tags.map { tag in
                .a(
                    attributes: [
                        .class("btn btn-outline-secondary btn-sm song-tag"),
                        .href("/tag/\(tag)/"),
                        .role(.button)
                    ],
                    .text(tag.rawValue)
                )
            }),
            .fragment(song.country.map { country in
                .a(
                    attributes: [
                        .class("btn btn-outline-secondary btn-sm song-tag"),
                        .href("/country/\(country)/"),
                        .role(.button)
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

        let parser = PrefixUpTo("^link(")
            .skip(StartsWith("^link("))
            .take(Prefix { $0 != ")"})
            .skip(StartsWith(")"))

        var parseString = original[...]
        // Only 'link' supported at the moment
        let replacer = LinkReplacer(rawValue: "link")!
        while let (leader, linkId) = parser.parse(&parseString) {
            result.append(.text(String(leader)))
            result.append(replacer.newHtml(for: String(linkId), song: song))
        }
        result.append(.text(String(parseString)))

        return .fragment(result)
    }
}
