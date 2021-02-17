import Foundation

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
            songArticle(markdown: markdown),
            makeSongLinks(),
            //            makeSongTags(),
            songNavigation(location: .bottom)

        )
    }

    private func songArticle(markdown: [String : HtmlNode]) -> HtmlNode {
        return .div(attributes: [.class("description col-12")],
            markdown["summary"]!,
            song.video.renderEmbedded(),
            resolveShortcuts(markdown["article"]!)
        )
    }

    func pageTitle() -> String {
        song.title
    }

    private func songNavigation(location: NavLocation) -> HtmlNode {
        return .nav(
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
        return .p( // TODO inconsistency in next/prev naming. Use older/newer, it's less ambiguous
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
                    song.video.renderInList(),
                    .fragment(song.links.map  { $0.renderInList() })
                )
            )
        )
    }

    private func makeSongTags() -> HtmlNode {
        // TODO factor out URLs to make them easy to manage
        .div(
            .h4("Tags"),
            .ul(
                .fragment(song.tags.map { tag in
                    .li(
                        .a(
                            attributes: [
                                .class("tag-link"),
                                .href("/tag/\(tag)/")
                            ],
                            .text(tag.rawValue)
                        )
                    )
                })
            )
        )
    }

    private func makeCountries() -> HtmlNode {
        .div(
            .h4("Origin"),
            .ul(
                .fragment(song.country.map { country in
                    .li(
                        .a(
                            attributes: [
                                .class("country-link"),
                                .href("/country/\(country)/")
                            ],
                            .text(country.rawValue)
                        )
                    )
                })
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

    // TODO Put all the artwork in one dir, like icons
    // TODO Name the files after the song
    // TODO Do all the copies in main()
    // TODO Nuke writeExtras from orbit
    func writeExtras() -> Void {
        for res in 1 ... song.maxRez {
            fileUtils.copyFile(dirs: dirPath(), file: "artwork-\(res)x.jpg")
        }
    }
}
