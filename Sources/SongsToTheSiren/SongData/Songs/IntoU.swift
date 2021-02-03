extension Song {
    static func intoU() -> Song {
        return Song(
            id:       3,
            style:    .semiPanel,
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
                    data: SongLink.Common(
                        id:    "fade-into-you",
                        embed: "Fade Into You",
                        list:  "Fade Into You - Mazzy Star"
                    ),
                    code:  "7Z4zCIn7zyY"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "we-dont-give-a-damn-about-our-friends",
                        embed: "We Don't Give a Damn About Our Friends",
                        list:  "We Don't Give a Damn About Our Friends - Girls On Top aka Richard X"
                    ),
                    code:  "RZO_Uqx7njM"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "are-friends-electric",
                        embed: "Are 'Friends' Electric?",
                        list:  "Are 'Friends' Electric? - Tubeway Army"
                    ),
                    code:  "QzSM3pRtgcM"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "freak-like-me",
                        embed: "Freak Like Me",
                        list:  "Freak Like Me - Adina Howard"
                    ),
                    code:  "fdyUqqRfUMk"
                ),
            ]
       )

    }
}
