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
                    embedded: SongLink.Embed(id: "fade-into-you", text: "Fade Into You"),
                    listing:  SongLink.List(text: "Fade Into You - Mazzy Star"),
                    code:     "7Z4zCIn7zyY"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "we-dont-give-a-damn-about-our-friends", text: "We Don't Give a Damn About Our Friends"),
                    listing:  SongLink.List(text: "We Don't Give a Damn About Our Friends - Girls On Top aka Richard X"),
                    code:     "RZO_Uqx7njM"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "are-friends-electric", text: "Are 'Friends' Electric?"),
                    listing:  SongLink.List(text: "Are 'Friends' Electric? - Tubeway Army"),
                    code:     "QzSM3pRtgcM"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "freak-like-me", text: "Freak Like Me"),
                    listing:  SongLink.List(text: "Freak Like Me - Adina Howard"),
                    code:     "fdyUqqRfUMk"
                ),
            ]
       )

    }
}
