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
            tags:     [.debut, .decade1990s, .openingTrack],
            country:  [.scotland, .uk, .usa],
            links: [
                .youtubeVideo(
                    embedded: ["default": "Supervixen"],
                    listing:  "Supervixen - Garbage (audio)",
                    code:     "qRdZ1eEciQ4"
                ),
                .youtubeLink(
                    embedded: ["angelfish": "an Angelfish side-project"],
                    listing:  "Suffocate Me - Angelfish",
                    code:     "cO-YCm4GXw8"
                )
            ]
       )

    }
}
