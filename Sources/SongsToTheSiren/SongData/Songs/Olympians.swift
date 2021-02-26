extension Song {
    static func olympians() -> Song {
        Song (
            id:       44,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Fuck Buttons",
            title:    "Olympians",
            album:    "Tarot Sport (2009), remix for Olympics (2012)",
            released: "14th October 2009",
            maxRez:   4,
            tags:     [ .decade2000s, .decade2010s, .electronic, .fWord, .instrumental ],
            country:  [.uk],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Olympians (2012 High Contrast Remix) - Fuck Buttons",
                    linkType:  .youtubeVideo(code: "4XnqR-VuTq8")
                ),
                SongLink(
                    id:        "original",
                    listText:  "Olympians (original version) - Fuck Buttons",
                    linkType:  .youtubeLink(code: "kQZo2rsReEM")
                )
                // TODO LINK FUCK SONGS
//                ,
//                SongLink(
//                    id:        "",
//                    embedText: "",
//                    listText:  "Queen of Hearts - Fucked Up",
//                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/43/view")
//                ),
//                SongLink(
//                    id:        "",
//                    embedText: "",
//                    listText:  "Lovely Allen - Holy Fuck",
//                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/45/view")
//                )
            ])
        )
    }
}
