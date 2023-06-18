import Foundation
extension Song {
    static func sense() -> Song {
        Song(
            id:        66,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Terry Hall",
            title:     "Sense",
            album:     "Home (1994)",
            released:  "12 September 1994 (LP), November 1994 (single)",
            maxRez:    3,
            createdAt: Date(timeIntervalSince1970: 1595544841),
            updatedAt: Date(timeIntervalSince1970: 1687060831),
            tags:      [.decade1990s, .collaboration, .terryHall],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Sense",
                    listText:  "Sense - Terry Hall (not official video)",
                    linkType:  .youtubeVideo(code: "vjo58vP36yY", offset: 2)
                ),
                SongLink(
                    id:        "supergroup",
                    embedText: "“supergroup”",
                    listText:  "Sense - Terry Hall (live “supergroup”)",
                    linkType:  .youtubeLink(code: "TmVxL0ZkGtE")
                ),
                SongLink(
                    id:        "all-kinds-of-everything",
                    embedText: "All Kinds of Everything",
                    listText:  "All Kinds of Everything - Terry Hall and Sinéad O’Connor",
                    linkType:  .youtubeLink(code: "s8oqKyVW978")
                ),
                SongLink(
                    id:        "sense-lightning-seeds",
                    listText:  "Sense - The Lightning Seeds",
                    linkType:  .youtubeLink(code: "OxliCqxKI6U")
                ),
            ])
        )
    }
}
