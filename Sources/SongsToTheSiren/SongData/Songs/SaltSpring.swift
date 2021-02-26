extension Song {
    static func saltSpring() -> Song {
        Song (
            id:       46,
            style:    .fullPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Anomie Belle",
            title:    "Salt Spring",
            album:    "Flux",
            released: "26th August 2016",
            maxRez:   4,
            tags:     [ .decade2010s, .platinum2016, .electronic, .glitch ],
            country:  [.usa],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Salt Spring - Anomie Belle",
                    linkType:  .youtubeVideo(code: "-6SvYkAlT1w")
                ),
                SongLink(
                    id:        "bonobo",
                    embedText: "Bonobo",
                    listText:  "Bonobo",
                    linkType:  .wikipedia(page: "Bonobo_(musician)")
                ),
                SongLink(
                    id:        "yppah",
                    embedText: "Yppah",
                    listText:  "Yppah",
                    linkType:  .wikipedia(page: "Yppah")
                ),
                SongLink(
                    id:        "lovers",
                    embedText: "Lovers",
                    listText:  "Lovers - Anomie Belle",
                    linkType:  .youtubeLink(code: "7zYc24J3A8o")
                ),
//                TODO internal link shiz
//                SongLink(
//                    id:        "",
//                    embedText: "",
//                    listText:  "Film Burn - Yppah (feat. Anomie Belle)",
//                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/48/view")
//                ),
//                SongLink(
//                    id:        "gumball-machine-weekend",
//                    embedText: "Gumball Machine Weekend",
//                    listText:  "Gumball Machine Weekend - Yppah",
//                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/47/view")
//                ),
                SongLink(
                    id:        "picture-perfect",
                    embedText: "Picture Perfect",
                    listText:  "Picture Perfect (live) - Anomie Belle ft Jon Auer",
                    linkType:  .youtubeLink(code: "288X1pGR0fI")
                )
            ])
        )
    }
}
