extension Song {
    static func mathematics() -> Song {
        Song (
            id:       18,
            style:    .fullPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Cherry Ghost",
            title:    "Mathematics",
            album:    "Thirst for Romance (2007)",
            released: "9th April 2007 (single), 9th July 2007 (LP)",
            maxRez:   3,
            tags:     [ .decade2000s, .manchester, .waltzTime ],
            country:  [.uk],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Mathematics - Cherry Ghost (official video)",
                    linkType:  .youtubeVideo(code: "gQjPWWBG_Hs")
                ),
                SongLink(
                    id:        "wikipedia",
                    embedText: "describes",
                    listText:  "Mathematics - Cherry Ghost (wikipedia)",
                    linkType:  .wikipedia(page: "Mathematics_(Cherry_Ghost_song)")
                )
            ])
        )
    }
}
