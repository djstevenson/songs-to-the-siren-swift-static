extension Song {
    static func goldenBrown() -> Song {
        Song (
            id:       31,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "The Stranglers",
            title:    "Golden Brown",
            album:    "La Folie (1981)",
            released: "10th January 1982 (single), 9th November 1981 (LP)",
            maxRez:   4,
            tags:     [ .decade1980s, .addedBeat, .postPunk, .timeSignatureChange, .waltzTime ],
            country:  [.uk],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "",
                    listText:  "Golden Brown - The Stranglers",
                    linkType:  .youtubeVideo(code: "z-GUjA67mdc")
                ),
                SongLink(
                    id:        "gospel",
                    embedText: "The Gospel According to the Meninblack",
                    listText:  "The Gospel According to the Meninblack - The Stranglers (Wikipedia)",
                    linkType:  .wikipedia(page: "The_Gospel_According_to_the_Meninblack")
                ),
                SongLink(
                    id:        "la-folie",
                    embedText: "La Folie",
                    listText:  "La Folie - The Stranglers (Wikipedia)",
                    linkType:  .wikipedia(page: "La_folie_(album)")
                ),
                SongLink(
                    id:        "supervixen",
                    embedText: "Supervixen",
                    listText:  "Supervixen - Garbage",
                    linkType:  .songstothesiren(song: "Supervixen")
                ),
                SongLink(
                    id:        "david-bennett-analysis",
                    embedText: "analysis",
                    listText:  "David Bennett analyses songs that add a beat",
                    linkType:  .youtubeLink(code: "qTdCzot0fqk")
                ),
                SongLink(
                    id:        "david-bennett-analysis-golden-brown",
                    embedText: "another video",
                    listText:  "David Bennett analyses Golden Brown",
                    linkType:  .youtubeLink(code: "I_Q7obp9AHs", offset: 526)
                )
            ])
        )
    }
}
