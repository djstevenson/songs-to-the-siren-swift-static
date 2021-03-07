import Foundation
extension Song {

    static func torn() -> Song {
        Song (
            id:        22,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Natalie Imbruglia",
            title:     "Torn",
            album:     "Left of the Middle",
            released:  "27th October 1997 (single), 24th November 1997 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587850051),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade1990s, .actor, .cover, .openingTrack],
            country:   [.australia],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Torn - Natalie Imbruglia (official video)",
                    linkType:  .youtubeVideo(code: "VV1XWJN3nJo")
                ),
                SongLink(
                    id:        "torn-ednaswap",
                    embedText: "Ednawap",
                    listText:  "Torn - Ednaswap",
                    linkType:  .youtubeLink(code: "9OoEdfB7l18")
                ),
                SongLink(
                    id:        "torn-sorensen",
                    embedText: "Lis Sørensen",
                    listText:  "Brændt (aka Torn) - Lis Sørensen",
                    linkType:  .youtubeLink(code: "jyuGaU4rXjA")
                ),
                SongLink(
                    id:        "state-ednaswap",
                    embedText: "the original",
                    listText:  "The State I’m In - Ednaswap",
                    linkType:  .youtubeLink(code: "q8399VJ-fU8")
                ),
                SongLink(
                    id:        "state-sinead",
                    embedText: "Sinéad O’Connor’s cover",
                    listText:  "The State I’m In - Sinéad O’Connor",
                    linkType:  .youtubeLink(code: "WxhySI2tI8A")
                )
            ])
        )
    }
}
