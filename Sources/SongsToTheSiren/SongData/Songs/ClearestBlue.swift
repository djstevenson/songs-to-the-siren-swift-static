import Foundation

import Foundation
extension Song {

    static func clearestBlue() -> Song {
        Song(
            id:        6,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Chvrches",
            title:     "Clearest Blue",
            album:     "Every Open Eye (2015)",
            released:  "10th September 2015 (single), 25th September 2015 (album), 2016 (Gryffin remix)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1586993870),
            updatedAt: Date(timeIntervalSince1970: 1615142851+6),
            tags:      [.electronic, .decade2010s],
            country:   [.scotland, .uk],
            links:     SongLinks(links: [
                SongLink(
                    id:       "default",
                    listText: "Clearest Blue - Chvrches",
                    linkType: .youtubeVideo(code: "BZyzX4c1vIs", offset: 18)
                ),
                SongLink(
                    id:        "the-mother-we-share",
                    embedText: "The Mother We Share",
                    listText:  "The Mother We Share - Chvrches",
                    linkType: .youtubeLink(code: "_mTRvJ9fugM")
                ),
                SongLink(
                    id:        "bbc-sound-of-2013",
                    embedText: "BBC Sound of 2013",
                    listText:  "BBC Sound of 2013",
                    linkType: .other(url: URL(string: "https://www.bbc.co.uk/events/efxzp6")!)
                ),
                SongLink(
                    id:        "gryffin-remix",
                    embedText: "Gryffin Remix",
                    listText:  "Clearest Blue (Gryffin Remix) - Chvrches",
                    linkType: .youtubeLink(code: "O-3-46RD2W8")
                ),
            ])
        )
    }
}
