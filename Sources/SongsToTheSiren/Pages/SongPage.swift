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
        .div(attributes: [.class("mt-4")],
            songNavigation(location: .top),
            .div(attributes: [.class("clear-both bg-grey-medium rounded-lg border border-black shadow-3xl mt-6 mb-4")],
                panelHeader(song),
                songArticle(markdown: markdown),
                makeSongLinks(),
                panelFooter(song)
            ),
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

        return .div(attributes: [.class("pl-6 pr-6")],
            summary,
            defaultLink.renderEmbedded(),
            resolveShortcuts(article)
        )
    }

    func pageTitle() -> String {
        song.title
    }

    private func songNavigation(location: NavLocation) -> HtmlNode {
        .nav(attributes: [.class("pt-2")],
            songNavLink(songMap[song.dir]?.newer, direction: .newer),
            songNavLink(songMap[song.dir]?.older, direction: .older),
            .div(attributes: [.class("clear-both")])
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
                attributes: [.class("link"), .href("/song/\(song.dir).html")],
                .text(song.title)
            ),
            .text(" \(label)")
        )
    }

    private func makeSongLinks() -> HtmlNode {
        guard !song.links.isEmpty else {
            return .fragment([])
        }

        return
            .div(attributes: [.class("pl-6")],
                 .h4(attributes:[.class("hidden")], "Links"),
                .ul(attributes: [.class("w-full mt-4")],
                    .fragment(song.links.map { $0.renderInList() })
                )
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
                fatalError("Unknown shortcut, type=\(type) song=\(song.title)")
            }

            result.append(.text(String(leader)))
            result.append(replacer.newHtml(for: String(code), song: song))
        }
        result.append(.text(String(parseString)))

        return .fragment(result)
    }
}
