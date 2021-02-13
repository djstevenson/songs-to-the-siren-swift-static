import Foundation

extension Song {
    static func fish() -> Song {
        Song(
            id:       15,
            style:    .fullPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Throwing Muses",
            title:    "Fish",
            album:    "Lonely Is An Eyesore (4AD various artists compilation)",
            released: "15th June 1987",
            maxRez:   4,
            tags:     [.fourAD, .decade1980s, .compilationAlbum, .lonelyIsAnEyesore, .ringTone],
            country:  [.usa],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "fish",
                                desc: "Fish - Throwing Muses"
                            ),
                            code: "kIYkd9nJLJA"
                      ),
            links: [
                .youtube(
                    embedded: ["not-too-soon": "Not Too Soon"],
                    listing:  "Not Too Soon - Throwing Muses",
                    code:     "=RZI-FTcFtn8"
                ),
                .wikipedia(
                    embedded: ["chains-changed-ep": "Chains Changed EP"],
                    listing:  "Chains Changed EP - Throwing Muses",
                    page:     "Chains_Changed"
                ),
                .wikipedia(
                    embedded: ["lonely-is-an-eyesore": "Lonely Is an Eyesore"],
                    listing:  "Lonely Is an Eyesore - 4AD compilation",
                    page:     "Lonely_Is_an_Eyesore"
                ),
                .other(
                    embedded: ["ask-me": "ask me"],
                    url:      URL(string: "https://twitter.com/hoagy_ytfc")!
                )



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

                // TODO Doesn't exist yet:
//                ,
//                .songstothesiren(data: SongLink.Common(
//                        id:    "chains-changed-ep",
//                        embedded: ["Chains Changed EP",
//                        list:  "Chains Changed EP - Throwing Muses"
//                    ),
//                    song:  "HotDoggie"
//                )
            ]
       )

    }
}
