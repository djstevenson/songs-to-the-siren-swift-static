extension Song {
    static func thruTheGlass() -> Song {
        Song (
            id:       28,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Thirteen Senses",
            title:    "Thru The Glass",
            album:    "The Invitation",
            released: "1st March 2004 (single), 27th September 2004 (LP)",
            maxRez:   4,
            tags:     [ .decade2000s, .golden2004, .sixMusic, .cornwall ],
            country:  [.uk],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Thru The Glass - Thirteen Senses",
                    listText:  "Thru The Glass - Thirteen Senses",
                    linkType:  .youtubeVideo(code: "KazJKjBvyRI")
                )
            ])
        )
    }
}
