extension Song {
    static func deceptacon() -> Song {
        Song(
            id:       11,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Le Tigre",
            title:    "Deceptacon",
            album:    "Le Tigre (1999)",
            released: "25th October 1999",
            maxRez:   4,
            tags:     [.decade1990s, .electronic, .punk, .kathleenHanna, .riotGrrrl],
            country:  [.usa],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "official",
                                desc: "Decaptacon - Le Tigre (official video)"
                            ),
                            code: "EU1CDSP7FRk"
                      ),
            links: [
                .youtube(
                    embedded: SongLink.Embed(id: "live-performance", text: "live performance"),
                    listing:  SongLink.List(text: "Decaptacon - Le Tigre (live)"),
                    code:     "VG9UJJposmg"
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "the-punk-singer-trailer", text: "The Punk Singer"),
                    listing:  SongLink.List(text: "The Punk Singer (official trailer)"),
                    code:     "zMbLzaVkn2s"
                )
            ]
       )

    }
}
