import Foundation
import Html

struct CountryPage: Page {
    let fileUtils: FileUtils
    let country: Song.Country
    let songs: [Song]
    var markdownNames: [String] = []

    func dirPath() -> [String] {
        ["country", "\(country)"]
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
        "Songs to the Siren - artists from '\(country.rawValue)'"
    }

    private func generateSongPanels() -> HtmlNode {
        .fragment(
            songs.compactMap { fullPanelSong($0) }
        )
    }

    // TODO DRY this, it's used in loads of pages.
    // Protocol extension, or base class (but this is a struct atm)
    private func fullPanelSong(_ song: Song) -> HtmlNode {
        .section(
            .header(
                .a(
                    attributes: [ // TODO DRY refactor, this is re-used in loads of places
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
                .text("Song summary goes here. Gonna have to work out how to load it")
            )
        )
    }
}
