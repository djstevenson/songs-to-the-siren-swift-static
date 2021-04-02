import Foundation
extension Song {
    static func lieDreamOfACasinoSoul() -> Song {
        Song(
            id:        62,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Fall",
            title:     "Lie Dream of a Casino Soul",
            album:     "Single (1981). Also on CD re-issue of Slates mini-LP",
            released:  "1981",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1594519001),
            updatedAt: Date(timeIntervalSince1970: 1615142851+62),
            tags:      [.decade1980s, .manchester],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Lie Dream of a Casino Soul",
                    listText:  "Lie Dream of a Casino Soul - The Fall",
                    linkType:  .youtubeVideo(code: "vqBrAFPG-DE")
                ),
                SongLink(
                    id:        "wigan-casino",
                    embedText: "Wigan Casino",
                    listText:  "The Wigan Casino (Wikipedia)",
                    linkType:  .wikipedia(page: "Wigan_Casino")
                ),
                SongLink(
                    id:        "let-your-heart-dance",
                    embedText: "Let Your Heart Dance",
                    listText:  "Let Your Heart Dance - Secret Affair",
                    linkType:  .youtubeLink(code: "Xgt3-ao4nF4")
                ),
            ])
        )
    }
}
