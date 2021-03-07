import Foundation
extension Song {

    static func olympians() -> Song {
        Song (
            id:        44,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Fuck Buttons",
            title:     "Olympians",
            album:     "Tarot Sport (2009), remix for Olympics (2012)",
            released:  "14th October 2009",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1590010502),
            updatedAt: Date(timeIntervalSince1970: 1615142851+44),
            tags:      [.decade2000s, .decade2010s, .electronic, .fWord, .instrumental],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Olympians (2012 High Contrast Remix) - Fuck Buttons",
                    linkType:  .youtubeVideo(code: "4XnqR-VuTq8")
                ),
                SongLink(
                    id:        "original",
                    listText:  "Olympians (original version) - Fuck Buttons",
                    linkType:  .youtubeLink(code: "kQZo2rsReEM")
                ),
                SongLink(
                    id:        "queen-of-hearts",
                    listText:  "Queen of Hearts - Fucked Up",
                    linkType:  .song(song: "QueenOfHearts")   // TODO ENUM NOT STRING-TYPED!!
                ),
                SongLink(
                    id:        "lovely-allen",
                    listText:  "Lovely Allen - Holy Fuck",
                    linkType:  .song(song: "LovelyAllen")
                )
            ])
        )
    }
}
