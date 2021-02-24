extension Song {
    static func heartOfGlass() -> Song {
        Song (
            id:       32,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Blondie",
            title:    "Heart of Glass",
            album:    "Parallel Lines",
            released: "January 1979 (single), 23rd September 1978 (LP)",
            maxRez:   4,
            tags:     [ .decade1970s, .disco, .postPunk, .skippedBeat, .timeSignatureChange ],
            country:  [.usa],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Heart of Glass - Blondie",
                    linkType:  .youtubeVideo(code: "WGU_4-5RaxU")
                ),
                SongLink(
                    id:        "middle-8",
                    embedText: "2m 0s",
                    linkType:  .youtubeLink(code: "WGU_4-5RaxU", offset: 120)
                ),
                SongLink(
                    id:        "mike-chapman",
                    embedText: "Mike Chapman",
                    listText:  "Producer Mike Chapman (wikipedia)",
                    linkType:  .wikipedia(page: "Mike_Chapman")
                ),
                SongLink(
                    id:        "documentary",
                    listText:  "How “Heart of Glass” was made",
                    linkType:  .youtubeLink(code: "2K4zdG0QfOA")
                ),
                SongLink(
                    id:        "db-1",
                    embedText: "video 1",
                    listText:  "David Bennett analyses songs that skip a beat (1)",
                    linkType:  .youtubeLink(code: "N6Wtvs42Ne8")
                ),
                SongLink(
                    id:        "db-2",
                    embedText: "video 2",
                    listText:  "David Bennett analyses songs that skip a beat (2)",
                    linkType:  .youtubeLink(code: "I_Q7obp9AHs")
                )
            ])
        )
    }
}
