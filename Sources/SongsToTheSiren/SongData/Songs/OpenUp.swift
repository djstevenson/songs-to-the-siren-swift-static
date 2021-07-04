import Foundation
extension Song {
    static func openUp() -> Song {
        Song(
            id:        83,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Leftfield Lydon",
            title:     "Open Up",
            album:     "Leftism (1995)",
            released:  "1st November 1993 (single), 30th January 1995 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1618350019),
            updatedAt: Date(timeIntervalSince1970: 1618350019),
            tags:      [.decade1990s, .sideProject, .indieDance, .collaboration],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Open Up - Leftfield Lydon",
                    linkType:  .youtubeVideo(code: "hZj9bi7YNmI", offset: 4)
                ),
                SongLink(
                    id:        "world-destruction",
                    embedText: "World Destruction",
                    listText:  "World Destruction - Time Zone",
                    linkType:  .youtubeLink(code: "4VgLkk_drx4")
                )
            ])
        )
    }
}

