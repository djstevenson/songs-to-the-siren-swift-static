extension Song {
    static func justLikeHeaven() -> Song {
        Song(
            id:       10,
            style:    .fullPanel,
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
                    data: SongLink.Common(
                        id:    "watson-twins",
                        embed: "The Watson Twins",
                        list:  "Just Like Heaven - The Watson Twins"
                    ),
                    code:  "KRcmj_XZGzY"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "katie-melua",
                        embed: "Katie Melua",
                        list:  "Just Like Heaven - Katie Melua"
                    ),
                    code:  "XV4CZmHcvd0"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "dinosaur-jr",
                        embed: "Dinosaur Jr.",
                        list:  "Just Like Heaven - Dinosaur Jr."
                    ),
                    code:  "UT7IpRx08tE"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "kiss-me",
                        embed: "Kiss Me, Kiss Me, Kiss Me",
                        list:  "Kiss Me, Kiss Me, Kiss Me - The Cure"
                    ),
                    code:  "BNTrm67-g8Q"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "rick-beato",
                        embed: "Rick Beato's analysis of Just Like Heaven in his 'What Makes This Song Great' series",
                        list:  "Rick Beato's analysis of Just Like Heaven in What Makes This Song Great Ep 83"
                    ),
                    code:  "LPNHwwXh3Ks"
                )
            ]
       )

    }
}
