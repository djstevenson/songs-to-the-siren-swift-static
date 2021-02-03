extension Song {
    static func planetOfSound() -> Song {
        return Song(
            id:       7,
            style:    .fullPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Pixies",
            title:    "Planet of Sound",
            album:    "Trompe Le Monde (1991)",
            released: "28th May 1991 (single), 3rd September 1991 (LP)",
            maxRez:   4,
            tags:     [.indie, .fourAD, .decade1990s, .sciFi],
            country:  [.usa],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "planet-of-sound",
                                desc: "Planet of Sound - Pixies"
                            ),
                            code: "tzdxBYk5Bjk"
                      ),
            links: []
       )

    }
}
