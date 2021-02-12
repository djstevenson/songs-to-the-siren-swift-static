extension Song {
    static func tinyFeet() -> Song {
        Song(
            id:       5,
            style:    .listing,
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
                    embedded: SongLink.Embed(id: "reprise", text: "reprise"),
                    listing:  "Tiny Feet (Reprise) - The Heart Throbs (YouTube Audio)",
                    code:     "WIFVffd4SMs"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "cleopatra-grip", text: "Cleopatra Grip"),
                    listing:  "Cleopatra Grip (first LP) - The Heart Throbs (YouTube audio)",
                    code:     "76_T4nRdLqc&list=PLhGLkBjndhcVoZH5uTEhaQh-FYp-9p3sk"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "jubilee-twist", text: "Jubilee Twist"),
                    listing:  "Jubilee Twist (second LP) - The Heart Throbs (YouTube audio)",
                    code:     "8lqapAybdLY&list=OLAK5uy_nwv7BhKLOEg0W6ulRBfNaGu_sanr3tLHk"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "hooligan", text: "Hooligan"),
                    listing:  "Hooligan - The Heart Throbs (YouTube audio)",
                    code:     "jAxQpILzx3w"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "bright-green-day", text: "Bright Green Day"),
                    listing:  "Bright Green Day - The Heart Throbs (YouTube audio)",
                    code:     "gBvA2XeGOYM"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "tossed-away", text: "Tossed Away"),
                    listing:  "Tossed Away - The Heart Throbs (YouTube audio)",
                    code:     "76_T4nRdLqc"
                )
            ]
       )

    }
}
