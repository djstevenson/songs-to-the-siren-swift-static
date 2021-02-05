import Foundation

extension Song {
    static func clearestBlue() -> Song {
        Song(
            id:       6,
            style:    .semiPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Chvrches",
            title:    "Clearest Blue",
            album:    "Every Open Eye (2015)",
            released: "10th September 2015 (single), 25th September 2015 (album), 2016 (Gryffin remix)",
            maxRez:   4,
            tags:     [.electronic, .decade2010s, .scottish],
            country:  [.uk],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:     "clearest-blue",
                                desc:   "Clearest Blue - Chvrches"
                            ),
                            code:   "BZyzX4c1vIs",
                            offset: 18
                      ),
            links: [
                .youtube(
                    data: SongLink.Common(
                        id:    "the-mother-we-share",
                        embed: "The Mother We Share",
                        list:  "The Mother We Share - Chvrches"
                    ),
                    code: "_mTRvJ9fugM"
                ),
                .other(
                    data: SongLink.Common(
                        id:    "bbc-sound-of-2013",
                        embed: "BBC Sound of 2013",
                        list:  "Cleopatra Grip (first LP) - The Heart Throbs (YouTube audio)"
                    ),
                    url: URL(string: "https://www.bbc.co.uk/events/efxzp6")!
                ),
                .youtube(
                    data: SongLink.Common(
                        id:    "gryffin-remix",
                        embed: "Gryffin Remix",
                        list:  "Clearest Blue (Gryffin Remix) - Chvrches"
                    ),
                    code: "O-3-46RD2W8"
                )
            ]
       )

    }
}
