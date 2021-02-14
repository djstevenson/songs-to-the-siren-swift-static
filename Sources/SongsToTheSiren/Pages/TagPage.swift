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

    func writeExtras() -> Void {}
}
