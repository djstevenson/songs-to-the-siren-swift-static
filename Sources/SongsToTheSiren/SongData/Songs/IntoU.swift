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
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "into-u",
                                desc: "Into U - Richard X ft Jarvis Cocker"
                            ),
                            code: "T5XUCwxZqm4"
                      ),
            links: [
                .youtube(
                    embedded: ["fade-into-you": "Fade Into You"],
                    listing:  "Fade Into You - Mazzy Star",
                    code:     "7Z4zCIn7zyY"
                ),
                .youtube(
                    embedded: ["we-dont-give-a-damn-about-our-friends": "We Don't Give a Damn About Our Friends"],
                    listing:  "We Don't Give a Damn About Our Friends - Girls On Top aka Richard X",
                    code:     "RZO_Uqx7njM"
                ),
                .youtube(
                    embedded: ["are-friends-electric": "Are 'Friends' Electric?"],
                    listing:  "Are 'Friends' Electric? - Tubeway Army",
                    code:     "QzSM3pRtgcM"
                ),
                .youtube(
                    embedded: ["freak-like-me": "Freak Like Me"],
                    listing:  "Freak Like Me - Adina Howard",
                    code:     "fdyUqqRfUMk"
                ),
            ]
       )

    }
}
