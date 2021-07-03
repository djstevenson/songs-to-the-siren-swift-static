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
                        .href("/css/songs-to-the-siren-min.css"),
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
                    .div(attributes: [.class("xl:max-w-7xl bg-grey-dark rounded-lg border border-black shadow-3xl pt-6 pb-6 pl-8 pr-8")],
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
        .div(
            homeLink(),
            aboutLink(),
            atomLink()
        )
    }

    private func homeLink() -> HtmlNode {
        .h1(attributes: [.class("text-banner text-3xl sm:text-4xl md:text-5xl font-bold italic hover:underline pb-2")],
            .a(attributes: [.href("/")], .text("Songs to the Siren"))
        )
    }

    private func aboutLink() -> HtmlNode {
        .a(attributes: [.class("link"), .href("/about.html")], .text("About this blog..."))
    }

    private func atomLink() -> HtmlNode {
        .div(attributes: [.class("float-right")],
             .a(attributes: [.href("/atom.xml"), .class("link object-fill flex")],
                .img(src:"/icons/atom-4x.png", alt:"Atom feed", attributes: [
                    .class("flex-none"),
                    .height(24),
                    .width(24),
                ])
            )
        )
    }

    func fullPanelSong(_ song: Song) -> HtmlNode {
        .div(attributes: [.class("clear-both bg-grey-medium rounded-lg border border-black shadow-3xl mt-6 mb-4")],
            panelHeader(song),
            panelBody(song),
            panelFooter(song)
        )
    }

    func songHref(_ song: Song) -> Attribute<Tag.A> {
        return .href("/song/\(song.dir).html")
    }

    func panelHeader(_ song: Song) -> HtmlNode {
        return
            .div(
                .div(
                    .a(
                        attributes: [.class("float-left mr-4"), songHref(song)],
                        .img(src:"/artwork/\(song.dir)-4x.jpg", alt:"Record sleeve image", attributes: [
                            .class("rounded hidden lg:block"),
                            .height(320),
                            .width(320),
                        ]),
                        .img(src:"/artwork/\(song.dir)-4x.jpg", alt:"Record sleeve image", attributes: [
                            .class("rounded hidden sm:block lg:hidden"),
                            .height(160),
                            .width(160),
                        ])
                    ),
                    .h2(attributes: [.class("rounded pl-6 pt-1 md:pt-2 lg:pt-3 pb-1 md:pb-2 lg:pb-3 bg-grey-darkest border-b-2 md:border-b-4 border-banner-border text-banner text-xl sm:text-2xl md:text-3xl lg:text-4xl font-bold")],
                        .a(
                            attributes: [songHref(song)],
                            .text(song.title)
                        )
                    ),
                    .h3(attributes: [.class("pl-6 pt-4 text-lg md:text-2xl lg:text-4xl font-bold italic")], .text(song.artist)),
                    .h4(attributes: [.class("pl-6 pt-2 md:text-md lg:text-2xl italic")], .text(song.released)),
                    .h4(attributes: [.class("pl-6 pt-2 text-md lg:text-3xl")],
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

        return
            .div(
                .div(attributes: [.class("pl-6 pr-6")], summary),
                .p(attributes: [.class("pl-6 pr-6 pt-4")],
                   .a(attributes: [.class("link"), .href("/song/\(song.dir).html"), ],  // TODO This URL code is in a million places, DRY it
                       .text("Read more...")
                   )
                )
            )
    }

    func panelFooter(_ song: Song) -> HtmlNode {
        .div(attributes: [.class("mb-8 hidden md:block")],
            .p(attributes: [.class("pl-8 mt-4")],
               .span(attributes: [.class("mr-2")], "Tags: "),
               .fragment(song.tags.map(tagLink)),
               .fragment(song.country.map(countryLink))
            ),
            makeMetadata(song)
        )
    }

    private func tagLink(_ tag: Song.Tag) -> HtmlNode {
        // TODO Tag page needs to make clear it's filtering
        .a(attributes: [.href("/tag/\(tag).html"), .class("button-tag")], .text(tag.rawValue))
    }

    private func countryLink(_ country: Song.Country) -> HtmlNode {
        // TODO Country page needs to make clear it's filtering
        .a(attributes: [.href("/country/\(country).html"), .class("button-tag")], .text(country.rawValue))
    }

    func makeMetadata(_ song: Song) -> HtmlNode {
        .p(attributes: [.class("text-sm italic ml-8 mt-6")],
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
