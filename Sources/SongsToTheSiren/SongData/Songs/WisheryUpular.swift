import Foundation
extension Song {

    static func wisheryUpular() -> Song {
        Song (
            id:        17,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Pogo",
            title:     "Wishery / Upular",
            album:     "-",
            released:  "2013?",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587568191),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade2000s, .twoForOne, .mashup],
            country:   [.australia],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Wishery - Pogo (samples from Snow White and the Seven Dwarfs)",
                    linkType:  .youtubeVideo(code: "qs1bG6BIYlo")
                ),
                SongLink(
                    id:        "upular",
                    listText:  "Upular - Pogo (samples from Up)",
                    linkType:  .youtubeVideo(code: "JVxe5NIABsI")
                ),
                SongLink(
                    id:        "alice",
                    embedText: "Alice",
                    listText:  "Alice - Pogo (samples from Alice in Wonderland)",
                    linkType:  .youtubeLink(code: "pAwR6w2TgxY")
                )
            ])
        )
    }
}
