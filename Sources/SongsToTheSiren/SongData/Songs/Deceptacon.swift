extension Song {
    static func deceptacon() -> Song {
        Song(
            id:       11,
            style:    .fullPanel,
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
                    data: SongLink.Common(
                        id:    "live-performance",
                        embed: "live performance",
                        list:  "Decaptacon - Le Tigre (live)"
                    ),
                    code:  "VG9UJJposmg"
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "the-punk-singer-trailer",
                        embed: "The Punk Singer",
                        list:  "The Punk Singer (official trailer)"
                    ),
                    code:  "zMbLzaVkn2s"
                )
            ]
       )

    }
}
