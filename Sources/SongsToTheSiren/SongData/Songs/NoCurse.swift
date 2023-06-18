import Foundation
extension Song {
    static func noCurse() -> Song {
        Song(
            id:        89,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Waxahatchee",
            title:     "No Curse",
            album:     "Single only",
            released:  "2017",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1687049953),
            updatedAt: Date(timeIntervalSince1970: 1687049953),
            tags:      [.decade2010s, .indie],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "No Curse - Waxahatchee",
                    linkType:  .youtubeVideo(code: "wdNyo_Q8dqE")
                ),
                SongLink(
                    id:        "documentary",
                    embedText: "documentary",
                    listText:  "Recording No Curse - Waxahatchee",
                    linkType:  .youtubeLink(code: "_q7TJC0Uhrg")
                ),
                SongLink(
                    id:        "la-loose-electronic",
                    embedText: "an electronic",
                    listText:  "La Loose (electronic, from Ivy Tripp) - Waxahatchee",
                    linkType:  .youtubeLink(code: "kbmkt-Gt930")
                ),
                SongLink(
                    id:        "la-loose-acoustic",
                    embedText: "solo acoustic",
                    listText:  "La Loose (solo, live SiriusXM) - Waxahatchee",
                    linkType:  .youtubeLink(code: "xQqn7NH7bEg")
                ),
                SongLink(
                    id:        "la-loose-indie",
                    embedText: "indie band context",
                    listText:  "La Loose (band, live KEXP) - Waxahatchee",
                    linkType:  .youtubeLink(code: "khP4gMwUhbc", offset: 3)
                )
            ])
        )
    }
}

