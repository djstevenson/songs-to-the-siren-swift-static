import Foundation
extension Song {
    static func rideOnTime() -> Song {
        Song (
            id:        74,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Black Box",
            title:     "Ride on Time",
            album:     "Dreamland (1990)",
            released:  "1989 (Single), 1990 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1602894638),
            updatedAt: Date(timeIntervalSince1970: 1615142851+74),
            tags:      [.decade1980s, .house, .italianHouse, .sample, .tr909],
            country:   [.italy],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Ride on Time - Black Box",
                    linkType:  .youtubeVideo(code: "M0quXl_od3g")
                ),
                SongLink(
                    id:        "acapella",
                    embedText: "a capella mix",
                    listText:  "Love Sensation - Loleatta Holloway (a capella)",
                    linkType:  .youtubeLink(code: "uDDwuFa33go")
                ),
                SongLink(
                    id:        "love-sensation",
                    embedText: "Love Sensation",
                    listText:  "Love Sensation - Loleatta Holloway",
                    linkType:  .youtubeLink(code: "BKmw9UrX99s")
                )
            ])
        )
    }
}
