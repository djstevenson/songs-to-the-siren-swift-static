import Foundation

struct HomePage: Page {
    let fileUtils: FileUtils
    let songList: SongList
    var markdownNames: [String] = []

    func dirPath() -> [String] {
        ["home"]
    }

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        .fragment( songList.songs.map { generateSection($0) } )
    }

    func pageTitle() -> String {
        "Songs to the Siren - a blog about songs"
    }

    private func generateSection(_ song: Song) -> HtmlNode {
        .section(
            .header(
                .a(
                    attributes: [ .href("/song/n") ],
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
