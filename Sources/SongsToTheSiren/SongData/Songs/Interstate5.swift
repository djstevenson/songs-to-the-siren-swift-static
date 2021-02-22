extension Song {
    static func interstate5() -> Song {
        Song (
            id:       29,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "The Wedding Present",
            title:    "Interstate 5",
            album:    "Take Fountain (2005)",
            released: "15th November 2004 (single), 14th February 2005 (LP)",
            maxRez:   4,
            tags:     [ .decade2000s, .golden2004, .sixMusic ],
            country:  [.uk, .usa],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Interstate 5 - The Wedding Present (official video)",
                    linkType:  .youtubeVideo(code: "ZjNeycs0IjI")
                ),
                SongLink(
                    id:        "lp-version",
                    embedText: "LP version",
                    listText:  "Interstate 5 (LP version) - The Wedding Present",
                    linkType:  .youtubeLink(code: "s8ETMxwe8Sk")
                ),
                SongLink(
                    id:        "ringway-to-seatac",
                    embedText: "Ringway To Seatac",
                    listText:  "Ringway to Seatac - The Wedding Present",
                    linkType:  .youtubeLink(code: "_PkuHlF99f4")
                ),
                SongLink(
                    id:        "further-north-than-you",
                    embedText: "I'm From Further North Than Your",
                    listText:  "I'm From Further North Than You - The Wedding Present",
                    linkType:  .youtubeLink(code: "ZK_f3jS47qw")
                )
            ])
        )
    }
}
