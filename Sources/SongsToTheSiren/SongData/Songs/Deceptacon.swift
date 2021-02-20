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
            links: [
                .youtubeVideo(
                    embedded: ["default": "Deceptacon"],
                    listing:  "Decaptacon - Le Tigre (official video)",
                    code:     "EU1CDSP7FRk"
                ),
                .youtubeLink(
                    embedded: ["live-performance": "live performance"],
                    listing:  "Decaptacon - Le Tigre (live)",
                    code:     "VG9UJJposmg"
                ),
                .youtubeLink(
                    embedded: ["the-punk-singer-trailer": "The Punk Singer"],
                    listing:  "The Punk Singer (official trailer)",
                    code:     "zMbLzaVkn2s"
                )
            ]
       )

    }
}
