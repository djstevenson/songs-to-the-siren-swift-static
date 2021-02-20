extension Song {
    static func lostInThePlot() -> Song {
        Song(
            id:       4,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "The Dears",
            title:    "Lost in the Plot",
            album:    "No Cities Left (2003)",
            released: "15th April 2003",
            maxRez:   4,
            tags:     [.husbandWife, .decade2000s],
            country:  [.canada],
            links: [
                .youtubeVideo(
                    embedded: ["default": "Lost in the Plot"],
                    listing:  "Lost in the Plot - The Dears (Official Video)",
                    code:     "u0zRxxBKZ1A"
                ),

            ]
       )

    }
}
