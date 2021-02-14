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

    func writeExtras() -> Void {}
}
