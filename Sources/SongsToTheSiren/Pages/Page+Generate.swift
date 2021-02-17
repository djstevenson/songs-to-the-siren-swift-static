import Foundation
import Html

extension Page {

    func generate() -> Void {
        let markdownContents = loadMarkdown()
        let htmlPage = embed(markdown: markdownContents)
        writeContent(render(htmlPage))
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
                        contentHeader(),
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

    private func contentHeader() -> HtmlNode {
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
        .section(attributes: [.class("song row rounded")],
            panelHeader(song),
            panelBody(song),
            panelFooter(song)
        )
    }

    // TODO Should this be in song class? Probs ok here, actually
    func songHref(_ song: Song) -> Attribute<Tag.A> {
        return .href("/song/\(song.dir)/")
    }

    func panelHeader(_ song: Song) -> HtmlNode {
        .header(attributes: [.class("col-12 p-0")],
            .a(
                attributes: [ songHref(song) ],
                .img(src:"/artwork/\(song.dir)-1x.png", alt:"Record sleeve image", attributes: [
                    .class("rounded float-left mr-3 mb-1"),
                    .height(160),
                    .width(160),
                    .srcset([
                        "/artwork/\(song.dir)-4x.jpg": .x(4),
                        "/artwork/\(song.dir)-3x.jpg": .x(3),
                        "/artwork/\(song.dir)-2x.jpg": .x(2),
                        "/artwork/\(song.dir)-1x.jpg": .x(1)
                    ])
                ])
            ),
            .h2(attributes: [.class("title rounded-top")],
                .a(
                    attributes: [ songHref(song) ],
                    .text(song.title)
                )
            ),
            .h3(attributes: [.class("artist")],
                .text(song.artist)
            ),
            .h3(attributes: [.class("artist")],
                .span(attributes:[.class("country")],
                    .fragment(song.country.map { .a(attributes:[.href("/country/\($0)/")], .text($0.rawValue + " ")) } )
                )
            ),
            .h4(attributes: [.class("release")], .text(song.released))
        )
    }

    private func panelBody(_ song: Song) -> HtmlNode {
        // TODO this is hacky
        let dummy = Dictionary<Int, Song>()
        // TODO Make the songMap an optional arg?
        let songPage = SongPage(fileUtils: fileUtils, song: song, songMap: SongList.SongMap(older:dummy, newer: dummy))
        let md = songPage.loadMarkdown()

        return .div(
            attributes: [.class("description col-12")],
            md["summary"]!,
            .p(attributes: [.class("more")],
               .a(attributes: [.href("/song/\(song.dir)/"), ],
                   .text("Read more...")
               )
            )
        )
    }

    private func panelFooter(_ song: Song) -> HtmlNode {
        .footer(attributes: [.class("col-12")],
            .p(attributes: [.class("song-tags")],
               .fragment(song.tags.map(tagLink))
            )
        )
    }

    private func tagLink(_ tag: Song.Tag) -> HtmlNode {
        // TODO Highlight current tag (although Perl version doesn't)
        // TODO Tag page needs to make clear it's filtering
        .a(attributes: [.class("btn btn-outline-secondary btn-sm song-tag"), .href("/tag/\(tag)/"), .role(.button)],
           .text(tag.rawValue)
        )
    }


}
