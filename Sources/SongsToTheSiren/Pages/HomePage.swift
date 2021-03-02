import Foundation
import Html

struct HomePage: Page {
    let fileUtils: FileUtils
    let songList: SongList
    var markdownNames: [String] = []

    func dirPath() -> [String] { [] }
    func filename() -> String { "index" }

    func validate() -> Void {}

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
                attributes: [.class("front-page-song-list")],
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
        .fragment([
            .h3(.text("Previously...")),
            .ul(
                .fragment(
                    songList.songs
                        .filter { $0.style == .listing }
                        .compactMap { listingSong($0) }
                )
            )
        ])
    }

    private func listingSong(_ song: Song) -> ChildOf<Tag.Ul> {
        .li(
            .a(
                attributes: [songHref(song)],
                .span(attributes: [.class("title")], .text(song.title))
            ),
            .text(" - "),
            .span(attributes: [.class("artist")], .text(song.artist)),
            .text(" : "),
            .span(attributes: [.class("date")], .text(publishDate(song)))
        )
    }
}
