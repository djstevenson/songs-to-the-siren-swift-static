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
            links: [
                .youtubeVideo(
                    embedded: ["default": "Just Like Heaven"],
                    listing:  "Just Like Heaven - The Cure",
                    code:     "n3nPiBai66M"
                ),
                .youtubeLink(
                    embedded: ["watson-twins": "The Watson Twins"],
                    listing:  "Just Like Heaven - The Watson Twins",
                    code:     "KRcmj_XZGzY"
                ),
                .youtubeLink(
                    embedded: ["katie-melua": "Katie Melua"],
                    listing:  "Just Like Heaven - Katie Melua",
                    code:     "XV4CZmHcvd0"
                ),
                .youtubeLink(
                    embedded: ["dinosaur-jr": "Dinosaur Jr."],
                    listing:  "Just Like Heaven - Dinosaur Jr.",
                    code:     "UT7IpRx08tE"
                ),
                .youtubeLink(
                    embedded: ["kiss-me": "Kiss Me, Kiss Me, Kiss Me"],
                    listing:  "Kiss Me, Kiss Me, Kiss Me - The Cure",
                    code:     "BNTrm67-g8Q"
                ),
                .youtubeLink(
                    embedded: ["rick-beato": "Rick Beato's analysis of Just Like Heaven in his 'What Makes This Song Great' series"],
                    listing:  "Rick Beato's analysis of Just Like Heaven in What Makes This Song Great Ep 83",
                    code:     "LPNHwwXh3Ks"
                )
            ]
       )

    }
}
