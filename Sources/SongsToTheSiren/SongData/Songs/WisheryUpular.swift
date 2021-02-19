extension Song {
    static func wisheryUpular() -> Song {
        Song (
            id:       17,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Pogo",
            title:    "Wishery / Upular",
            album:    "-",
            released: "2013?",
            maxRez:   4,
            tags:     [ .decade2000s, .twoForOne, .mashup ],
            country:  [.australia],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "video",
                                desc: "Wishery - Pogo (samples from Snow White and the Seven Dwarfs)"
                            ),
                            code: "qs1bG6BIYlo"
                      ),
            links:    [
                .youtube(
                    listing:  "Upular - Pogo (samples from Up)",
                    code:     "JVxe5NIABsI"
                ),
                .youtube(
                    listing:  "Alice - Pogo (samples from Alice in Wonderland)",
                    code:     "pAwR6w2TgxY"
                )
            ]
        )
    }
}
