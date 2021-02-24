extension Song {
    static func allMappedOut() -> Song {
        Song (
            id:       30,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "The Departure",
            title:    "All Mapped Out",
            album:    "Dirty Words (2005)",
            released: "2nd August 2004 (single), 13th June 2005 (LP)",
            maxRez:   4,
            tags:     [ .decade2000s, .golden2004, .sixMusic, .newRomantic, .northampton ],
            country:  [.uk],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "All Mapped Out - The Departure",
                    linkType:  .youtubeVideo(code: "e2nS4plebWM")
                )
            ])
        )
    }
}
