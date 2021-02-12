extension Song {
    static func gloryBox() -> Song {
        Song(
            id:       13,
            style:    .fullPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Portishead",
            title:    "Glory Box",
            album:    "Dummy (1994)",
            released: "22nd August 1994 (LP), 3rd January 1995 (single)",
            maxRez:   4,
            tags:     [.bristol, .isaacHayes, .sample, .tripHop, .decade1990s],
            country:  [.uk],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "yt",
                                desc: "Glory Box - Portishead"
                            ),
                            code: "4qQyUi4zfDs"
                      ),
            links: [
                .youtube(
                    data: SongLink.Common(
                        id:    "hell-is-round-the-corner",
                        embed: "Hell is Round the Corner",
                        list:  "Hell Is Round The Corner - Tricky"
                    ),
                    code:  "E3R_3h6zQEs"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "here",
                        embed: "Here by Alessia Cara",
                        list:  "Here - Alessia Cara"
                    ),
                    code:  "UKp2CrfmVfw"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "sawyers-medley",
                        embed: "Here / Glory Box medley",
                        list:  " Here / Glory Box - Jazmin Sawyers"
                    ),
                    code:  "7BQAoOriwqI"
                )
            ]
       )

    }
}
