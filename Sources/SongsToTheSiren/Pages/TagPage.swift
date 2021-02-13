import Foundation
import Html

struct TagPage: Page {
    let fileUtils: FileUtils
    let tag:   Song.Tag
    let songs: [Song]
    var markdownNames: [String] = []

    func dirPath() -> [String] {
        ["tags", "\(tag)"]
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
        .section(
            .header(
                .a(
                    attributes: [ // TODO grep for index.html, this is re-used in loads of places
                        .href("../songs/\(song.dir)/index.html")
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
                .text("Song summary goes here. Gonna have to work out how to load it")
            )
        )
    }
}
