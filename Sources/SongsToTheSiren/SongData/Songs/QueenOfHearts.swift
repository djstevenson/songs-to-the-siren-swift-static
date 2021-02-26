extension Song {
    static func queenOfHearts() -> Song {
        Song (
            id:       43,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Fucked Up",
            title:    "Queen of Hearts",
            album:    "David Comes to Life",
            released: "7th June 2011",
            maxRez:   4,
            tags:     [ .decade2010s, .fWord, .rockOpera, .shouty ],
            country:  [.canada],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Queen of Hearts - Fucked Up",
                    linkType:  .youtubeVideo(code: "yhgOt7YFN0I")
                ),
                SongLink(
                    id:        "official",
                    listText:  "Queen of Hearts - Fucked Up (official video)",
                    linkType:  .youtubeLink(code: "syg6XGbdUkM")
                )
                // TODO FUCK SONGS
//                ,
//                SongLink(
//                    id:        "",
//                    embedText: "",
//                    listText:  "Lovely Allen - Holy Fuck",
//                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/45/view")
//                ),
//                SongLink(
//                    id:        "",
//                    embedText: "",
//                    listText:  "Olympians - Fuck Buttons",
//                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/44/view")
//                )
            ])
        )
    }
}
