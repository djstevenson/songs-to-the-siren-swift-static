extension Song {
    static func tinyFeet() -> Song {
        Song(
            id:       5,
            style:    .semiPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "The Heart Throbs",
            title:    "Tiny Feet",
            album:    "Jubilee Twist (1992)",
            released: "23rd June 1992",
            maxRez:   4,
            tags:     [.indie, .decade1990s, .openingTrack, .oneLittleIndian],
            country:  [.uk],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "tiny-feet-audio",
                                desc: "Tiny Feet - The Heart Throbs (YouTube Audio)"
                            ),
                            code: "HE115eeeJLg"
                      ),
            links: [
                .youtube(
                    data: SongLink.Common(
                        id:    "reprise",
                        embed: "reprise",
                        list:  "Tiny Feet (Reprise) - The Heart Throbs (YouTube Audio)"
                    ),
                    code:  "WIFVffd4SMs"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "cleopatra-grip",
                        embed: "Cleopatra Grip",
                        list:  "Cleopatra Grip (first LP) - The Heart Throbs (YouTube audio)"
                    ),
                    code:  "76_T4nRdLqc&list=PLhGLkBjndhcVoZH5uTEhaQh-FYp-9p3sk"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "jubilee-twist",
                        embed: "Jubilee Twist",
                        list:  "Jubilee Twist (second LP) - The Heart Throbs (YouTube audio)"
                    ),
                    code:  "8lqapAybdLY&list=OLAK5uy_nwv7BhKLOEg0W6ulRBfNaGu_sanr3tLHk"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "hooligan",
                        embed: "Hooligan",
                        list:  "Hooligan - The Heart Throbs (YouTube audio)"
                    ),
                    code:  "jAxQpILzx3w"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "bright-green-day",
                        embed: "Bright Green Day",
                        list:  "Bright Green Day - The Heart Throbs (YouTube audio)"
                    ),
                    code:  "gBvA2XeGOYM"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "tossed-away",
                        embed: "Tossed Away",
                        list:  "Tossed Away - The Heart Throbs (YouTube audio)"
                    ),
                    code:  "76_T4nRdLqc"
                )
            ]
       )

    }
}
