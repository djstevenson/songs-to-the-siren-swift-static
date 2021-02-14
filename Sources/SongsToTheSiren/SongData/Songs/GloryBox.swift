extension Song {
    static func gloryBox() -> Song {
        Song(
            id:       13,
            style:    .listing,
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
                    embedded: ["hell-is-round-the-corner": "Hell is Round the Corner"],
                    listing:  "Hell Is Round The Corner - Tricky",
                    code:     "E3R_3h6zQEs"
                ),
                .youtube(
                    embedded: ["here": "Here by Alessia Cara"],
                    listing:  "Here - Alessia Cara",
                    code:     "UKp2CrfmVfw"
                ),
                .youtube(
                    embedded: ["sawyers-medley": "Here / Glory Box medley"],
                    listing:  "Here / Glory Box - Jazmin Sawyers",
                    code:     "7BQAoOriwqI"
                )
            ]
       )

    }
}