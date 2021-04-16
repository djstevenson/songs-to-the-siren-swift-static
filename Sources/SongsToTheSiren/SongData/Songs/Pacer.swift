import Foundation
extension Song {
    static func pacer() -> Song {
        Song(
            id:        84,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Amps",
            title:     "Pacer",
            album:     "Pacer",
            released:  "30th October 1995 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1618528416),
            updatedAt: Date(timeIntervalSince1970: 1618605781),
            tags:      [.decade1990s, .sideProject],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Pacer - The Amps",
                    linkType:  .youtubeVideo(code: "n3DF7Mufmhw")
                ),
                SongLink(
                    id:        "lp-version",
                    embedText: "LP",
                    listText:  "Pacer - The Amps (LP version)",
                    linkType:  .youtubeLink(code: "NUtoEVaw8nA")
                ),
            ])
        )
    }
}

