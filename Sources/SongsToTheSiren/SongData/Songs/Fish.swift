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
                    data: SongLink.Common(
                        id:    "not-too-soon",
                        embed: "Not Too Soon",
                        list:  "Not Too Soon - Throwing Muses"
                    ),
                    code:  "=RZI-FTcFtn8"
                ),
                .otherNoList(
                    data: SongLink.Common(
                        id:    "ask-me",
                        embed: "ask me",
                        list:  nil
                    ),
                    url:  URL(string: "https://twitter.com/hoagy_ytfc")!
                ),
                .wikipedia(
                    data: SongLink.Common(
                        id:    "chains-changed-ep",
                        embed: "Chains Changed EP",
                        list:  "Chains Changed EP - Throwing Muses"
                    ),
                    page:  "Chains_Changed"
                ),
                .wikipedia(
                    data: SongLink.Common(
                        id:    "lonely-is-an-eyesore",
                        embed: "Lonely Is an Eyesore",
                        list:  "Lonely Is an Eyesore - 4AD compilation"
                    ),
                    page:  "Lonely_Is_an_Eyesore"
                )


                // TODO Not yet implemented tag pages
//                ,
//                .songstothesirentag(
//                    data: SongLink.Common(
//                        id:    "lonely-is-an-eyesore",
//                        embed: "Lonely is an Eyesore",
//                        list:  "Lonely is an Eyesore - 4AD Compilation"
//                    ),
//                    tag:  .lonelyIsAnEyesore
//                ),

                // TODO Doesn't exist yet:
//                ,
//                .songstothesiren(data: SongLink.Common(
//                        id:    "chains-changed-ep",
//                        embed: "Chains Changed EP",
//                        list:  "Chains Changed EP - Throwing Muses"
//                    ),
//                    song:  "HotDoggie"
//                )
            ]
       )

    }
}
