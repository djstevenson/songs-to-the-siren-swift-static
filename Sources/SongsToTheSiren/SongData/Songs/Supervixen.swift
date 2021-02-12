extension Song {
    static func supervixen() -> Song {
        Song(
            id:       2,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Garbage",
            title:    "Supervixen",
            album:    "Garbage (1995)",
            released: "15th August 1995",
            maxRez:   4,
            tags:     [.debut, .decade1990s, .openingTrack, .scottish],
            country:  [.uk, .usa],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "supervixen-audio",
                                desc: "Supervixen - Garbage (audio)"
                            ),
                            code: "qRdZ1eEciQ4"
                      ),
            links: [
                .youtube(
                    embedded: SongLink.Embed(id: "angelfish", text: "an Angelfish side-project"),
                    listing:  "Suffocate Me - Angelfish",
                    code:     "cO-YCm4GXw8"
                )
            ]
       )

    }
}
