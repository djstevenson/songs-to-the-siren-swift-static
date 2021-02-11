extension Song {
    static func imNotInLove() -> Song {
        Song(
            id:       9,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "10cc",
            title:    "I'm Not in Love",
            album:    "The Original Soundtrack (1975)",
            released: "May 1975 (single), 11th March 1975 (LP)",
            maxRez:   4,
            tags:     [.tapeLoops, .bassSolo, .decade1970s],
            country:  [.uk],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "im-not-in-love",
                                desc: "I'm Not In Love - 10cc"
                            ),
                            code: "STugQ0X1NoI"
                      ),
            links: [
                .youtube(
                    data: SongLink.Common(
                        id:    "documentary",
                        embed: "documentary",
                        list:  "I'm Not in Love: The Story of 10cc documentary"
                    ),
                    code:   "MhLW_yYqngY"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "bass-solo",
                        embed: "bass line",
                        list:  "I'm Not In Love (middle 8) - 10cc"
                    ),
                    code:  "STugQ0X1NoI",
                    offset: 116
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "bass-solo",
                        embed: "bass-solo-cover",
                        list:  "I'm Not In Love (middle 8) - A cover that emphasises the bass part"
                    ),
                    code:  "wiRgdCNi5GA",
                    offset: 135
                )
            ]
       )

    }
}
