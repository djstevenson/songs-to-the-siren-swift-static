import Foundation
import Html

struct TagPage: Page {
    let fileUtils: FileUtils
    let tag:   Song.Tag
    let songs: [Song]
    var markdownNames: [String] = []

    func dirPath() -> [String] {
        ["tag", "\(tag)"]
    }

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        .fragment ([
            .div(
                attributes: [.class("full-panel-songs")],
                generateSongPanels()
            )
        ])
    }

    func pageTitle() -> String {
        "Songs to the Siren - songs tagged '\(tag.rawValue)'"
    }

    private func generateSongPanels() -> HtmlNode {
        .fragment(
            songs.compactMap { fullPanelSong($0) }
        )
    }


    private func fullPanelSong(_ song: Song) -> HtmlNode {
        // TODO this is hacky
        let dummy = Dictionary<Int, Song>()
        let songPage = SongPage(fileUtils: fileUtils, song: song, songMap: SongList.SongMap(next:dummy, prev: dummy))
        let md = songPage.loadMarkdown()

        // TODO THIS NEEDS DRYing
        return .section(
            .header(
                .a(
                    attributes: [ // TODO grep for index.html, this is re-used in loads of places
                        .href("/song/\(song.dir)/")
                    ],
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
                md["summary"]!
            )
        )
    }

    func writeExtras() -> Void {}
}
