extension Song {
    static func songToTheSiren() -> Song {
        Song(
            id:       1,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "This Mortal Coil",
            title:    "Song to the Siren",
            album:    "It'll End In Tears (4AD, October 1984)",
            released: "September 1983 (EP) / October 1984 (LP)",
            maxRez:   4,
            tags:     [.fourAD, .cover, .decade1980s, .lizFraser],
            country:  [.uk],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "official",
                                desc: "Song to the Siren - This Mortal Coil (official)"
                            ),
                            code: "HFWKJ2FUiAQ"
                      ),
            links: [
                .youtube(
                    data: SongLink.Common(
                        id:    "morning-glory",
                        embed: "Morning Glory",
                        list:  "Morning Glory - This Mortal Coil"
                    ),
                    code:  "01o6AB8MKyg"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "monkees",
                        embed: "The Monkees Show",
                        list:  "Song to the Siren - Tim Buckley, live on “The Monkees”"
                    ),
                    code:  "vMTEtDBHGY4"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "starsailor",
                        embed: "Starsailor LP",
                        list:  "Song to the Siren - Tim Buckley, studio version on Starsailor (1970)"
                    ),
                    code:  "cZiTSglLM-4"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "wolf-alice",
                        embed: "Wolf Alice",
                        list:  "Song to the Siren - Wolf Alice"
                    ),
                    code:  "G5nbn4-iwPY"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "sinead",
                        embed: "Sinéad O'Connor",
                        list:  "Song to the Siren - Sinéad O'Connor"
                    ),
                    code:  "88wL8oRf45U"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "hmhb",
                        embed: "Half Man Half Biscuit",
                        list:  "Song to the Siren - Half Man Half Biscuit"
                    ),
                    code:  "jjk2L5BFq1A"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "george-michael",
                        embed: "George Michael",
                        list:  "Song to the Siren - George Michael"
                    ),
                    code:  "vDIvTCweoCw"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "robert-plant",
                        embed: "Robert Plant",
                        list:  "Song to the Siren - Robert Plant (do not click on this)"
                    ),
                    code:  "Gw9ANFOuMBU"
                ),
                .wikipedia(
                    data: SongLink.Common(
                        id:    "4ad",
                        embed: "4AD",
                        list:  "4AD (wikipedia)"
                    ),
                    page:  "4AD"
                )

            ]
       )

    }
}
