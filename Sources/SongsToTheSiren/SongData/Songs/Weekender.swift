import Foundation
extension Song {
    static func weekender() -> Song {
        Song (
            id:        55,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Flowered Up",
            title:     "Weekender",
            album:     "Single only",
            released:  "April 1992",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1591132848),
            updatedAt: Date(timeIntervalSince1970: 1591132848),
            tags:      [.decade1990s, .complex, .longSongs],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Weekender",
                    listText:  "Weekender - Flowered Up",
                    linkType:  .youtubeVideo(code: "LMa7iqPaKPk", offset: 60)
                )
            ])
        )
    }
}
