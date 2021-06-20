import Foundation
import Html

extension Page {

    func generate() {
        validate()
        let markdownContents = loadMarkdown()
        let htmlPage = embed(markdown: markdownContents)
        writeContent(render(htmlPage))
    }

    // Embeds the page-specific content into an HtmlNode wrapper
    func embed(markdown: [String: HtmlNode]) -> HtmlNode {
        let title = pageTitle()

        return .document(
            .html(
                attributes: [.lang(.en)],
                .head(
                    .meta(attributes: [.charset(.utf8)]),
                    .title(title),
                    .meta(viewport: .width(.deviceWidth), .initialScale(1)),
                    .link(attributes: [
                        .rel(.stylesheet),
                        .href("/css/songs-to-the-siren.css"),
                    ]),
                    .link(attributes: [
                        .rel(.alternate),
                        .type(.application(.init(rawValue: "atom+xml"))),
                        .href("/atom.xml"),
                        .title("Songs to the Siren Atom feed"),
                    ])
                ),
                .body(
                    attributes: [.class("bg-grey-bg m-6 text-lg text-body-text")],
                    .div(attributes: [.class("g:max-w-5xl bg-grey-dark rounded-lg border border-black shadow-3xl pt-6 pb-6 pl-8 pr-8")],
                        contentHeader(),
                        pageContent(markdown: markdown)
                    )
                )
            )
        )
    }

    private func writeContent(_ content: String) {
        fileUtils.writeFile(dirs: dirPath(), file: "/\(filename()).html", content: content)
    }

    private func contentHeader() -> HtmlNode {
        .header(
            .div(
                homeLink(),
                aboutLink(),
                atomLink()
            )
        )
    }

    private func homeLink() -> HtmlNode {
        .h1(attributes: [.class("text-banner text-5xl font-bold italic hover:underline pb-2")],
            .a(attributes: [.href("/")], .text("Songs to the Siren"))
        )
    }

    private func aboutLink() -> HtmlNode {
        .a(attributes: [.class("link"), .href("/about.html")], .text("About this blog..."))
    }

    private func atomLink() -> HtmlNode {
        .div(attributes: [.class("float-right")],
            .a(attributes: [.href("/atom.xml")],
                .img(src:"/icons/atom-1x.png", alt:"Atom feed", attributes: [
                    .height(24),
                    .width(24),
                    .srcset([
                        "/icons/atom-4x.png": .x(4),
                        "/icons/atom-3x.png": .x(3),
                        "/icons/atom-2x.png": .x(2),
                        "/icons/atom-1x.png": .x(1),
                    ]),
                ]),
                .text("Atom Feed")
            )
        )
    }

    func fullPanelSong(_ song: Song) -> HtmlNode {
        .section(attributes: [.class("clear-both bg-grey-medium rounded-lg border border-black shadow-3xl mt-4 p-6")],
            panelHeader(song),
            panelBody(song),
            panelFooter(song)
        )
    }

    func songHref(_ song: Song) -> Attribute<Tag.A> {
        return .href("/song/\(song.dir).html")
    }

    func panelHeader(_ song: Song) -> HtmlNode {
        let srcsetValue = (1 ... song.maxRez).reversed().map { rez in
            "/artwork/\(song.dir)-\(rez)x.jpg \(rez)x"
        }.joined(separator: ", ")

        return
            .header(attributes: [.class("col-12 p-0")],
                .a(
                    attributes: [songHref(song)],
                    .img(src:"/artwork/\(song.dir)-1x.png", alt:"Record sleeve image", attributes: [
                        .class("rounded float-left mr-3 mb-1"),
                        .height(160),
                        .width(160),
                        .init("srcset", srcsetValue),
                    ])
                ),
                .h2(attributes: [.class("title rounded-top")],
                    .a(
                        attributes: [songHref(song)],
                        .text(song.title)
                    )
                ),
                .h3(attributes: [.class("artist")],
                    .text(song.artist)
                ),
                .h4(attributes: [.class("release")], .text(song.released)),
                .h3(attributes: [.class("artist")],
                    .span(attributes:[.class("country")],
                        .fragment(song.country.map {.a(attributes:[.href("/country/\($0).html")], .text($0.rawValue + " "))})
                    )
                )
            )
    }

    private func panelBody(_ song: Song) -> HtmlNode {
        // TODO this is hacky
        let dummy = [String: SongList.SongMap]()
        // TODO Make the songMap an optional arg?
        let songPage = SongPage(fileUtils: fileUtils, song: song, songMap: dummy)
        let md = songPage.loadMarkdown()

        guard let summary = md["summary"] else {
            fatalError("Bad 'summary' markdown for \(song.title)")
        }

        return .div(
            attributes: [.class("description col-12")],
            summary,
            .p(attributes: [.class("more")],
               .a(attributes: [.href("/song/\(song.dir).html"), ],  // TODO This URL code is in a million places, DRY it
                   .text("Read more...")
               )
            )
        )
    }

    private func panelFooter(_ song: Song) -> HtmlNode {
        .footer(attributes: [.class("col-12")],
            .p(attributes: [.class("song-tags")],
               .fragment(song.tags.map(tagLink))
            ),
            makeMetadata(song)
        )
    }

    private func tagLink(_ tag: Song.Tag) -> HtmlNode {
        // TODO Highlight current tag (although Perl version doesn't)
        // TODO Tag page needs to make clear it's filtering
        .a(attributes: [.class("btn btn-outline-secondary btn-sm song-tag"), .href("/tag/\(tag).html"), .role(.button)],
           .text(tag.rawValue)
        )
    }

    func makeMetadata(_ song: Song) -> HtmlNode {
        .p(attributes: [.class("metadata")],
            .text("Published at \(publishDate(song))")
        )
    }

    func publishDate(_ song: Song) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_GB_POSIX")
        formatter.dateFormat = "EEE, dd MMMM yyyy HH:mm"
        formatter.timeZone = TimeZone(identifier: "Europe/London")

        return formatter.string(from: song.createdAt)
    }

}
