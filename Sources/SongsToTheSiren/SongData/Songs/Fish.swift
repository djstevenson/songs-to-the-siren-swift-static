import Foundation
extension Song {

    static func fish() -> Song {
        Song(
            id:        15,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Throwing Muses",
            title:     "Fish",
            album:     "Lonely Is An Eyesore (4AD various artists compilation)",
            released:  "15th June 1987",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587497741),
            updatedAt: Date(timeIntervalSince1970: 1615142851+15),
            tags:      [.fourAD, .decade1980s, .compilationAlbum, .lonelyIsAnEyesore, .ringTone],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText: "Fish - Throwing Muses",
                    linkType: .youtubeVideo(code: "kIYkd9nJLJA")
                ),
                SongLink(
                    id:        "not-too-soon",
                    embedText: "Not Too Soon",
                    listText:  "Not Too Soon - Throwing Muses",
                    linkType: .youtubeLink(code: "RZI-FTcFtn8")
                ),
                SongLink(
                    id:        "chains-changed-ep",
                    embedText: "Chains Changed EP",
                    listText:  "Chains Changed EP - Throwing Muses",
                    linkType: .wikipedia(page: "Chains_Changed")
                ),
                SongLink(
                    id:        "lonely-is-an-eyesore",
                    embedText: "Lonely Is an Eyesore",
                    listText:  "Lonely Is an Eyesore - 4AD Compilation",
                    linkType: .wikipedia(page: "Lonely_Is_an_Eyesore")
                ),
                SongLink(
                    id:        "ask-me",
                    embedText: "ask me",
                    linkType: .other(url: URL(string: "https://twitter.com/hoagy_ytfc")!)
                ),

                // TODO Not yet implemented tag pages
                // TODO These are pre-refactor declarations and need changing
//                ,
//                .songstothesirentag(
//                    data: SongLink.Common(
//                        id:    "lonely-is-an-eyesore",
//                        embedded: ["Lonely is an Eyesore",
//                        list:  "Lonely is an Eyesore - 4AD Compilation"
//                    ),
//                    tag:  .lonelyIsAnEyesore
//                ),

                // TODO Doesn’t exist yet:
//                ,
//                .songstothesiren(data: SongLink.Common(
//                        id:    "chains-changed-ep",
//                        embedded: ["Chains Changed EP",
//                        list:  "Chains Changed EP - Throwing Muses"
//                    ),
//                    song:  "HotDoggie"
//                ),
            ])
        )

    }
}
