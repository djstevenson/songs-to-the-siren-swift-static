extension Song {
    static func gumballMachineWeekend() -> Song {
        Song (
            id:       47,
            style:    .fullPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Yppah",
            title:    "Gumball Machine Weekend",
            album:    "They Know What Ghost Know (2009)",
            released: "18th May 2009",
            maxRez:   4,
            tags:     [ .decade2000s, .electronic, .instrumental, .ninjaTune, .sixMusic ],
            country:  [.usa],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Gumball Machine Weekend - Yppah",
                    linkType:  .youtubeVideo(code: "cmQXuWOZP8w", offset: 10)
                )
                // TODO Other related links
//                ,
//                SongLink(
//                    id:        "salt-spring",
//                    embedText: "Salt Spring",
//                    listText:  "Salt Spring - Anomie Belle",
//                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/46/view")
//                ),
//                SongLink(
//                    id:        "",
//                    embedText: "",
//                    listText:  "Film Burn - Yppah (feat. Anomie Belle)",
//                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/48/view")
//                )
            ])
        )
    }
}
