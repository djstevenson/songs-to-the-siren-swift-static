extension Song {
    static func justLikeHeaven() -> Song {
        Song(
            id:       10,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "The Cure",
            title:    "Just Like Heaven",
            album:    "Kiss Me, Kiss Me, Kiss Me (1987)",
            released: "5th October 1987 (single), 25th May 1987 (LP)",
            maxRez:   4,
            tags:     [.decade1980s, .rickBeato],
            country:  [.uk],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "official",
                                desc: "Just Like Heaven - The Cure"
                            ),
                            code: "n3nPiBai66M"
                      ),
            links: [
                .youtube(
                    embedded: SongLink.Embed(id: "watson-twins", text: "The Watson Twins"),
                    listing:  SongLink.List(text: "Just Like Heaven - The Watson Twins"),
                    code:     "KRcmj_XZGzY"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "katie-melua", text: "Katie Melua"),
                    listing:  SongLink.List(text: "Just Like Heaven - Katie Melua"),
                    code:     "XV4CZmHcvd0"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "dinosaur-jr", text: "Dinosaur Jr."),
                    listing:  SongLink.List(text: "Just Like Heaven - Dinosaur Jr."),
                    code:     "UT7IpRx08tE"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "kiss-me", text: "Kiss Me, Kiss Me, Kiss Me"),
                    listing:  SongLink.List(text: "Kiss Me, Kiss Me, Kiss Me - The Cure"),
                    code:     "BNTrm67-g8Q"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "rick-beato", text: "Rick Beato's analysis of Just Like Heaven in his 'What Makes This Song Great' series"),
                    listing:  SongLink.List(text: "Rick Beato's analysis of Just Like Heaven in What Makes This Song Great Ep 83"),
                    code:     "LPNHwwXh3Ks"
                )
            ]
       )

    }
}
