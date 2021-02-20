extension Song {
    static func wisheryUpular() -> Song {
        Song (
            id:       17,
            style:    .fullPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Pogo",
            title:    "Wishery / Upular",
            album:    "-",
            released: "2013?",
            maxRez:   4,
            tags:     [ .decade2000s, .twoForOne, .mashup ],
            country:  [ .australia ],
            links:    [
                .youtubeVideo(
                    embedded: ["default": "Wishery"],
                    listing:  "Wishery - Pogo (samples from Snow White and the Seven Dwarfs)",
                    code:     "kIYkd9nJLJA"
                ),
                .youtubeLink(
                    embedded: ["upular": "UPULAR LINK SHOULD BE EMBEDDED"],
                    listing:  "Upular - Pogo (samples from Up)",
                    code:     "qs1bG6BIYlo"
                ),
                .youtubeLink(
                    embedded: ["alice": "Alice"],
                    listing:  "Alice - Pogo (samples from Alice in Wonderland)",
                    code:     "pAwR6w2TgxY"
                )
            ]
        )
    }
}
