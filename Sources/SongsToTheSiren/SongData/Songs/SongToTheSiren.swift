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
            tags:     [.fourAD, .cover, .decade1980s, .lizFraser, .husbandWife],
            country:  [.scotland, .uk],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "official",
                                desc: "Song to the Siren - This Mortal Coil (official)"
                            ),
                            code: "HFWKJ2FUiAQ"
                      ),
            links: [
                .youtube(
                    embedded: ["morning-glory": "Morning Glory"],
                    listing:  "Morning Glory - This Mortal Coil",
                    code:     "01o6AB8MKyg"
                ),
                .youtube(
                    embedded: ["monkees": "The Monkees Show"],
                    listing:  "Song to the Siren - Tim Buckley, live on “The Monkees”",
                    code:     "vMTEtDBHGY4"
                ),
                .youtube(
                    embedded: ["starsailor": "Starsailor LP"],
                    listing:  "Song to the Siren - Tim Buckley, studio version on Starsailor (1970)",
                    code:     "cZiTSglLM-4"
                ),
                .youtube(
                    embedded: ["wolf-alice": "Wolf Alice"],
                    listing:  "Song to the Siren - Wolf Alice",
                    code:     "G5nbn4-iwPY"
                ),
                .youtube(
                    embedded: ["sinead": "Sinéad O'Connor"],
                    listing:  "Song to the Siren - Sinéad O'Connor",
                    code:     "88wL8oRf45U"
                ),
                .youtube(
                    embedded: ["hmhb": "Half Man Half Biscuit"],
                    listing:  "Song to the Siren - Half Man Half Biscuit",
                    code:     "jjk2L5BFq1A"
                ),
                .youtube(
                    embedded: ["george-michael": "George Michael"],
                    listing:  "Song to the Siren - George Michael",
                    code:     "vDIvTCweoCw"
                ),
                .youtube(
                    embedded: ["robert-plant": "Robert Plant"],
                    listing:  "Song to the Siren - Robert Plant (do not click on this)",
                    code:     "Gw9ANFOuMBU"
                ),
                .wikipedia(
                    embedded: ["4ad": "4AD"],
                    listing:  "4AD (wikipedia)",
                    page:  "4AD"
                )

            ]
       )

    }
}
