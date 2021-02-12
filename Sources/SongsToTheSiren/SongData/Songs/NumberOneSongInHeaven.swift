extension Song {
    static func numberOneSongInHeaven() -> Song {
        Song(
            id:       8,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Sparks",
            title:    "Number One Song in Heaven",
            album:    "No. 1 in Heaven (1979)",
            released: "23rd March 1979 (single), ? March 1979 (LP)",
            maxRez:   4,
            tags:     [.disco, .giorgioMoroder, .brothers, .decade1970s, .longSongs],
            country:  [.usa],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "number-one-song-in-heaven-part-2",
                                desc: "The Number One Song in Heaven (part 2) - Sparks (official video)"
                            ),
                            code: "P6I6yr7WDeg"
                      ),
            links: [
                .youtube(
                    embedded: ["number-one-song-in-heaven-full-audio": "full audio"],
                    listing:  #"The Number One Song in Heaven 12" - Sparks (audio of the full 12" version)"#,
                    code:     "jE4EarLZPYs"
                ),
                .youtube(
                    embedded: ["segued": "seguéd"],
                    listing:  "The Number One Song In Heaven (part 1) / Never Turn Your Back on Mother Earth (live) - Sparks",
                    code:     "sm4CkJYdQv0"
                )
            ]
       )

    }
}
