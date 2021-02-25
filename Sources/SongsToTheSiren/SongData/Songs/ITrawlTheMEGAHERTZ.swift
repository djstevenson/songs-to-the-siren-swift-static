extension Song {
    static func iTrawlTheMEGAHERTZ() -> Song {
        Song (
            id:       41,
            style:    .fullPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Paddy McAloon",
            title:    "I Trawl The MEGAHERTZ",
            album:    "I Trawl The MEGAHERTZ",
            released: "27th May 2003 (Paddy McAloon), February 2019 (re-release as Prefab Sprout)",
            maxRez:   4,
            tags:     [ .decade2000s, .decade2010s, .longSongs, .spokenWord ],
            country:  [.uk],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "I Trawl the MEGAHERTZ - Paddy McAloon (remastered, released as Prefab Sprout)",
                    linkType:  .youtubeVideo(code: "J-P7yVqJ9Wk")
                ),
                SongLink(
                    id:        "newsnight",
                    listText:  "Newsnight McAloon interview at the re-release of I Trawl The MEGAHERTZ",
                    linkType:  .youtubeLink(code: "cjSK6bGY2WE")
                )
            ])
        )
    }
}
