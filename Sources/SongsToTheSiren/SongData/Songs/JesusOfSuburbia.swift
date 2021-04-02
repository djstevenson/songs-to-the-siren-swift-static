import Foundation
extension Song {
    static func jesusOfSuburbia() -> Song {
        Song(
            id:        53,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Green Day",
            title:     "Jesus of Suburbia",
            album:     "American Idiot (2004)",
            released:  "21st September 2004 (LP), 25th October 2005 (single)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1591132844),
            updatedAt: Date(timeIntervalSince1970: 1615142851+53),
            tags:      [.decade2000s, .complex, .longSongs],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Jesus of Suburbia",
                    listText:  "Jesus of Suburbia - Green Day",
                    linkType:  .youtubeVideo(code: "fZFmaMbkUD4", offset: 109)
                ),
            ])
        )
    }
}
