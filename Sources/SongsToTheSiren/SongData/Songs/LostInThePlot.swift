extension Song {
    static func lostInThePlot() -> Song {
        return Song(
            id:       4,
            style:    .semiPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "The Dears",
            title:    "Lost in the Plot",
            album:    "No Cities Left (2003)",
            released: "15th April 2003",
            maxRez:   4,
            tags:     [.husbandWife, .decade2000s, .canadian],
            country:  [.canada],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:   "lost-in-the-plot",
                                desc: "Lost in the Plot - The Dears (Official Video)"
                            ),
                            code: "u0zRxxBKZ1A"
                      ),
            links: []
       )

    }
}
