import Foundation
import Html

struct HomePage: Page {
    let fileUtils: FileUtils
    let songList: SongList
    var markdownNames: [String] = []

    func dirPath() -> [String] {
        ["home"]
    }

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        .fragment ([
            .div(
                attributes: [.class("full-panel-songs")],
                generateFullPanels()

            ),
//            .div( NOT YET IMPLEMENTED
//                attributes: [.class("semi-panel-songs")],
//                generateSemiPanels()
//
//            ),
            .div(
                attributes: [.class("listing-songs")],
                generateListings()

            )
        ])
    }

    func pageTitle() -> String {
        "Songs to the Siren - a blog about songs"
    }

    private func generateFullPanels() -> HtmlNode {
        .fragment(
            songList.songs
                .filter { $0.style == .fullPanel }
                .compactMap { fullPanelSong($0) }
        )
    }


    private func generateListings() -> HtmlNode {
        .ul(
            .fragment(
                songList.songs
                    .filter { $0.style == .listing }
                    .compactMap { listingSong($0) }
            )
        )
    }


    private func fullPanelSong(_ song: Song) -> HtmlNode {
        .section(
            .header(
                .a(
                    attributes: [ songHref(song) ],
                    .img(attributes: [.class("artwork"), .alt("Record sleeve image"), .src("x.jpg"), .width(160), .height(160)]),
                    .h2(.text(song.title))
                ),
                .h3(
                    attributes: [.class("artist")],
                    .text(song.artist),
                    .span(
                        attributes: [.class("country")],
                        .text(song.country.map { $0.rawValue }.joined(separator: " "))
                    )
                ),
                .h4(attributes: [.class("release")], .text(song.released))
            ),
            .div(
                attributes: [.class("description")],
                .text("Song summary goes here. Gonna have to work out how to load it")
            )
        )
    }

    private func listingSong(_ song: Song) -> ChildOf<Tag.Ul> {
        .li(
            .a(
                attributes: [ songHref(song) ],
                .text(song.title)
            ),
            .text(" - \(song.artist): Timestamp from somewhere")
        )
    }

    // TODO Should this be in song class? Probs ok here, actually
    private func songHref(_ song: Song) -> Attribute<Tag.A> {
        // TODO grep for index.html, this is re-used in loads of places
        return .href("../songs/\(song.dir)/index.html")
    }
}
