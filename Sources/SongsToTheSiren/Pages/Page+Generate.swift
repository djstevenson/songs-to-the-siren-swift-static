import Foundation
import Html

extension Page {

    func generate() -> Void {
        let markdownContents = loadMarkdown()
        let htmlPage = embed(markdown: markdownContents)
        writeContent(render(htmlPage))

        writeExtras()
    }

    // Embeds the page-specific content into an HtmlNode wrapper
    func embed(markdown: [String: HtmlNode]) -> HtmlNode {
        let title = pageTitle()

        // Boostrap link should have these, not supported by the HTML framework:
        //   integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
        //   crossorigin="anonymous">
        //
        // Similar for the JS
        return .document(
            .html(
                attributes: [.lang(.en)],
                .head(
                    .meta(attributes: [.charset(.utf8)]),
                    .title(title),
                    .meta(viewport: .width(.deviceWidth), .initialScale(1)),
                    .link(attributes: [.rel(.stylesheet), .href("https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css")]),
                    .link(attributes: [.rel(.stylesheet), .href("/songs-to-the-siren.css")])
                ),
                .body(
                    .div(attributes: [.class("container")],
                        header(),
                        pageContent(markdown: markdown)
                    ),
                    .script(attributes: [.src("https://code.jquery.com/jquery-3.5.1.slim.min.js")]),
                    .script(attributes: [.src("https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js")])
                )
            )
        )
    }

    private func writeContent(_ content: String) {
        fileUtils.writeFile(dirs: dirPath(), file: "index.html", content: content)
    }

    private func header() -> HtmlNode {
        .header(
            .div(attributes: [.class("row page-header")],
                 .div(attributes: [.class("col-12")],
                    .h1(homeLink()),
                    aboutLink()
                )
            )
        )
    }

    private func homeLink() -> HtmlNode {
        .a(attributes: [.href("/home/")], .text("Songs to the Siren"))
    }

    private func aboutLink() -> HtmlNode {
        .a(attributes: [.href("/about/")], .text("About this blog..."))
    }

    func fullPanelSong(_ song: Song) -> HtmlNode {
        // TODO this is hacky
        let dummy = Dictionary<Int, Song>()
        // TODO Make the songMap an optional arg?
        let songPage = SongPage(fileUtils: fileUtils, song: song, songMap: SongList.SongMap(next:dummy, prev: dummy))
        let md = songPage.loadMarkdown()

        return .section(attributes: [.class("song row rounded")],
            .header(attributes: [.class("col-12 p-0")],
                .a(
                    attributes: [ songHref(song) ], // TODO higher resolution images for retina displays
                    .img(attributes: [.class("rounded float-left mr-3 mb-1"), .alt("Record sleeve image"), .src("/song/\(song.dir)/artwork-1x.jpg"), .width(160), .height(160)])
                ),
                .h2(attributes: [.class("title rounded-top")],
                    .text(song.title)
                ),
                .h3(attributes: [.class("artist")],
                    .text(song.artist)
                ),
                .h3(attributes: [.class("artist")],
                    .span(attributes:[], .fragment(song.country.map { .text($0.rawValue + " ") } ))
                ),
                .h4(attributes: [.class("release")], .text(song.released))
            ),
            .div(
                attributes: [.class("description")],
                md["summary"]!
            )
        )
    }

    // TODO Should this be in song class? Probs ok here, actually
    func songHref(_ song: Song) -> Attribute<Tag.A> {
        return .href("/song/\(song.dir)/")
    }
}
