import Foundation
import Html

struct HomePage: Page {
    let fileUtils: FileUtils
    let songList: SongList
    var markdownNames: [String] = []

    func dirPath() -> [String] { [] }
    func filename() -> String { "index" }

    func validate() {}

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

            ),
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
            .h3(attributes: [.class("mdh3")], .text("Previously...")),
            .ul(
                .fragment(
                    songList.songs
                        .filter { $0.style == .listing }
                        .compactMap { listingSong($0) }
                )
            ),
        ])
    }

    private func listingSong(_ song: Song) -> ChildOf<Tag.Ul> {
        .li(attributes: [.class("pl-6 pt-2")],
            .a(
                attributes: [.class("link"), songHref(song)],
                .span(attributes: [.class("font-bold")], .text(song.title))
            ),
            .span(attributes: [.class("hidden sm:block text-lg pl-3")], .text(song.artist)),
            .span(attributes: [.class("hidden md:block text-sm pl-5 italic")], .text(publishDate(song)))
        )
    }
}
