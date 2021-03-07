import Foundation
extension Song {

    static func itsOn() -> Song {
        Song (
            id:        20,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Flowered Up",
            title:     "It’s On",
            album:     "A Life With Brian",
            released:  "1990 (single) / 26th August 1991 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587756140),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade1990s, .drugs, .hype, .indieDance],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "It’s On - Flowered Up",
                    linkType:  .youtubeVideo(code: "fGPTVRGqfeo")
                ),
                SongLink(
                    id:        "yt-album",
                    listText:  "It’s On (faster album version) - Flowered Up",
                    linkType:  .youtubeLink(code: "n05kCd6o6Mo")
                )
            ])
        )
    }
}
