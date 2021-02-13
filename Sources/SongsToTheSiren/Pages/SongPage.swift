import Foundation

struct SongPage: Page {
    let fileUtils: FileUtils
    let song: Song
    let songMap: SongList.SongMap

    var markdownNames = ["summary", "article"]

    func dirPath() -> [String] {
        ["song", song.dir]
    }

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        .fragment([
            markdown["summary"]!,
            song.video.renderEmbedded(),
            resolveShortcuts(markdown["article"]!),
            .div(
                .h5(makeNextNode()),
                .h5(makePrevNode())
            ),
            makeSongTags(),
            makeCountries(),
            makeSongLinks()
        ])
    }

    func pageTitle() -> String {
        song.title
    }

}

// Rendering helpers
extension SongPage {
    func makeNextNode() -> HtmlNode {
        if let nextSong = songMap.next[song.id] {
            return makeSongNode(nextSong)
        }
        else {
            return .text("Not exists")
        }
    }

    func makePrevNode() -> HtmlNode {
        if let prevSong = songMap.prev[song.id] {
            return makeSongNode(prevSong)
        }
        else {
            return .text("Not exists")
        }
    }

    private func makeSongNode(_ song: Song) -> HtmlNode {
        // DRY with Link+Render ?
        let url = URL(string: "../\(song.dir)/index.html")!
        return .a(
            attributes: [
                .id("song-\(song.id)"),
                .class("link"),
                .href(url.absoluteString)
            ],
            .text(song.title)
        )
    }

    func makeSongLinks() -> HtmlNode {
        .div(
            .h4("Links"),
            .ul(
                song.video.renderInList(),
                .fragment(song.links.map  { $0.renderInList() })
            )
        )
    }

    func makeSongTags() -> HtmlNode {
        // TODO factor out URLs to make them easy to manage
        .div(
            .h4("Tags"),
            .ul(
                .fragment(song.tags.map { tag in
                    .li(
                        .a(
                            attributes: [
                                .class("tag-link"),
                                .href("../../tag/\(tag)/index.html")
                            ],
                            .text(tag.rawValue)
                        )
                    )
                })
            )
        )
    }

    func makeCountries() -> HtmlNode {
        .div(
            .h4("Origin"),
            .ul(
                .fragment(song.country.map { country in
                    .li(
                        .a(
                            attributes: [
                                .class("country-link"),
                                .href("../../country/\(country)/index.html")
                            ],
                            .text(country.rawValue)
                        )
                    )
                })
            )
        )
    }
}


// Shortcut processing
extension SongPage {

    // Will need to be in the view, with a 'do nothing' default
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

        let scanner = Scanner(string: original)
        scanner.charactersToBeSkipped = CharacterSet()
        var lastRemainder = ""[...]
        var matched = false
        while !scanner.isAtEnd {
            guard
                let leader = scanner.scanUpToString("^"),
                let _ = scanner.scanString("^"),
                let linkType = scanner.scanUpToString("("),
                let _ = scanner.scanString("("),
                let linkId = scanner.scanUpToString(")"),
                let _ = scanner.scanString(")")
            else {
                break
            }

            let replacer = LinkReplacer(rawValue: linkType)!
            result.append(.text(leader))
            result.append(replacer.newHtml(for: linkId, song: song))
            lastRemainder = scanner.string[scanner.currentIndex...]
            matched = true
        }

        if (matched) {
            result.append(.text(String(lastRemainder)))
        }
        else {
            result.append(.text(original))
        }

        return .fragment(result)
    }

}
