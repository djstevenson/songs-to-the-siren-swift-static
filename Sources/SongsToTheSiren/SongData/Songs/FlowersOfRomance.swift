import Foundation
extension Song {

    static func flowersOfRomance() -> Song {
        Song (
            id:        21,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Public Image Ltd",
            title:     "Flowers of Romance",
            album:     "The Flowers of Romance",
            released:  "27th March 1981 (single), 10th April 1981 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587756148),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade1980s, .noBass, .postPunk, .tapeLoops],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Flowers of Romance (single) - Public Image Ltd",
                    linkType:  .youtubeVideo(code: "OLMlHe2CslY")
                ),
                SongLink(
                    id:        "on-the-album",
                    embedText: "on the album",
                    listText:  "Flowers Of Romance (LP version) - Public Image Ltd",
                    linkType:  .youtubeLink(code: "95iY0iNEmQs")
                )
            ])
        )
    }
}
