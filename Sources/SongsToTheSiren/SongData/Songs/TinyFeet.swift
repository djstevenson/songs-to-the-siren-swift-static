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
            links: [
                .youtubeVideo(
                    embedded: ["default": "Tiny Feet"],
                    listing:  "Tiny Feet - The Heart Throbs (YouTube Audio)",
                    code:     "HE115eeeJLg"
                ),
                .youtubeLink(
                    embedded: ["reprise": "reprise"],
                    listing:  "Tiny Feet (Reprise) - The Heart Throbs (YouTube Audio)",
                    code:     "WIFVffd4SMs"
                ),
                .youtubeLink(
                    embedded: ["cleopatra-grip": "Cleopatra Grip"],
                    listing:  "Cleopatra Grip (first LP) - The Heart Throbs (YouTube audio)",
                    code:     "76_T4nRdLqc&list=PLhGLkBjndhcVoZH5uTEhaQh-FYp-9p3sk"
                ),
                .youtubeLink(
                    embedded: ["jubilee-twist": "Jubilee Twist"],
                    listing:  "Jubilee Twist (second LP) - The Heart Throbs (YouTube audio)",
                    code:     "8lqapAybdLY&list=OLAK5uy_nwv7BhKLOEg0W6ulRBfNaGu_sanr3tLHk"
                ),
                .youtubeLink(
                    embedded: ["hooligan": "Hooligan"],
                    listing:  "Hooligan - The Heart Throbs (YouTube audio)",
                    code:     "jAxQpILzx3w"
                ),
                .youtubeLink(
                    embedded: ["bright-green-day": "Bright Green Day"],
                    listing:  "Bright Green Day - The Heart Throbs (YouTube audio)",
                    code:     "gBvA2XeGOYM"
                ),
                .youtubeLink(
                    embedded: ["tossed-away": "Tossed Away"],
                    listing:  "Tossed Away - The Heart Throbs (YouTube audio)",
                    code:     "76_T4nRdLqc"
                )
            ]
       )

    }
}
