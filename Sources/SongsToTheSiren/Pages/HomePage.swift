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
        // TODO this is hacky
        let dummy = Dictionary<Int, Song>()
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
        return .href("/song/\(song.dir)/")
    }

    func writeExtras() -> Void {}
}
