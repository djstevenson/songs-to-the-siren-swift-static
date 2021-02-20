extension Song {
    static func intoU() -> Song {
        Song(
            id:       3,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Richard X ft Jarvis Cocker",
            title:    "Into U",
            album:    "Richard X Presents His X-Factor Vol. 1 (2003)",
            released: "23rd August 2003",
            maxRez:   4,
            tags:     [.sample, .mashup, .hopeSandoval, .jarvisCocker, .decade2000s],
            country:  [.uk, .usa],
            links: [
                .youtubeVideo(
                    embedded: ["default": "Into U"],
                    listing:  "Into U - Richard X ft Jarvis Cocker",
                    code:     "T5XUCwxZqm4"
                ),
                .youtubeLink(
                    embedded: ["fade-into-you": "Fade Into You"],
                    listing:  "Fade Into You - Mazzy Star",
                    code:     "7Z4zCIn7zyY"
                ),
                .youtubeLink(
                    embedded: ["we-dont-give-a-damn-about-our-friends": "We Don't Give a Damn About Our Friends"],
                    listing:  "We Don't Give a Damn About Our Friends - Girls On Top aka Richard X",
                    code:     "RZO_Uqx7njM"
                ),
                .youtubeLink(
                    embedded: ["are-friends-electric": "Are 'Friends' Electric?"],
                    listing:  "Are 'Friends' Electric? - Tubeway Army",
                    code:     "QzSM3pRtgcM"
                ),
                .youtubeLink(
                    embedded: ["freak-like-me": "Freak Like Me"],
                    listing:  "Freak Like Me - Adina Howard",
                    code:     "fdyUqqRfUMk"
                ),
            ]
       )

    }
}
