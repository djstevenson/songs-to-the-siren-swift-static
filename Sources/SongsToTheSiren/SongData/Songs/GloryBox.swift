import Foundation
extension Song {

    static func gloryBox() -> Song {
        Song(
            id:        13,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Portishead",
            title:     "Glory Box",
            album:     "Dummy (1994)",
            released:  "22nd August 1994 (LP), 3rd January 1995 (single)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587335164),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.bristol, .isaacHayes, .sample, .tripHop, .decade1990s],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText: "Glory Box - Portishead",
                    linkType: .youtubeVideo(code: "4qQyUi4zfDs")
                ),
                SongLink(
                    id:        "hell-is-round-the-corner",
                    embedText: "Hell Is Round The Corner",
                    listText:  "Hell Is Round The Corner - Tricky",
                    linkType: .youtubeLink(code: "E3R_3h6zQEs")
                ),
                SongLink(
                    id:        "here",
                    embedText: "Here by Alessia Cara",
                    listText:  "Here - Alessia Cara",
                    linkType: .youtubeLink(code: "UKp2CrfmVfw")
                ),
                SongLink(
                    id:        "sawyers-medley",
                    embedText: "Here / Glory Box medley",
                    listText:  "Here / Glory Box - Jazmin Sawyers",
                    linkType: .youtubeLink(code: "7BQAoOriwqI")
                )
            ])
       )

    }
}
