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
                    embedded: SongLink.Embed(id: "morning-glory", text: "Morning Glory"),
                    listing:  "Morning Glory - This Mortal Coil",
                    code:     "01o6AB8MKyg"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "monkees", text: "The Monkees Show"),
                    listing:  "Song to the Siren - Tim Buckley, live on “The Monkees”",
                    code:     "vMTEtDBHGY4"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "starsailor", text: "Starsailor LP"),
                    listing:  "Song to the Siren - Tim Buckley, studio version on Starsailor (1970)",
                    code:     "cZiTSglLM-4"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "wolf-alice", text: "Wolf Alice"),
                    listing:  "Song to the Siren - Wolf Alice",
                    code:     "G5nbn4-iwPY"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "sinead", text: "Sinéad O'Connor"),
                    listing:  "Song to the Siren - Sinéad O'Connor",
                    code:     "88wL8oRf45U"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "hmhb", text: "Half Man Half Biscuit"),
                    listing:  "Song to the Siren - Half Man Half Biscuit",
                    code:     "jjk2L5BFq1A"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "george-michael", text: "George Michael"),
                    listing:  "Song to the Siren - George Michael",
                    code:     "vDIvTCweoCw"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "robert-plant", text: "Robert Plant"),
                    listing:  "Song to the Siren - Robert Plant (do not click on this)",
                    code:     "Gw9ANFOuMBU"
                ),
                .wikipedia(
                    embedded: SongLink.Embed(id: "4ad", text: "4AD"),
                    listing:  "4AD (wikipedia)",
                    page:  "4AD"
                )

            ]
       )

    }
}
