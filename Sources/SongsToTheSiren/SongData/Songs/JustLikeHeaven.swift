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
                    embedded: ["watson-twins": "The Watson Twins"],
                    listing:  "Just Like Heaven - The Watson Twins",
                    code:     "KRcmj_XZGzY"
                ),
                .youtube(
                    embedded: ["katie-melua": "Katie Melua"],
                    listing:  "Just Like Heaven - Katie Melua",
                    code:     "XV4CZmHcvd0"
                ),
                .youtube(
                    embedded: ["dinosaur-jr": "Dinosaur Jr."],
                    listing:  "Just Like Heaven - Dinosaur Jr.",
                    code:     "UT7IpRx08tE"
                ),
                .youtube(
                    embedded: ["kiss-me": "Kiss Me, Kiss Me, Kiss Me"],
                    listing:  "Kiss Me, Kiss Me, Kiss Me - The Cure",
                    code:     "BNTrm67-g8Q"
                ),
                .youtube(
                    embedded: ["rick-beato": "Rick Beato's analysis of Just Like Heaven in his 'What Makes This Song Great' series"],
                    listing:  "Rick Beato's analysis of Just Like Heaven in What Makes This Song Great Ep 83",
                    code:     "LPNHwwXh3Ks"
                )
            ]
       )

    }
}
