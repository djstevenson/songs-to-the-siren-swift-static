import Foundation

import Foundation
extension Song {

    static func iNeedSomeFineWineAndYouYouNeedToBeNicer() -> Song {
        Song(
            id:        16,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Cardigans",
            title:     "I Need Some Fine Wine and You, You Need to Be Nicer",
            album:     "Super Extra Gravity (2005)",
            released:  "21st September 2005 (single), 17th October 2005 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587506858),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.decade2000s, .dogsInVideo],
            country:   [.sweden],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText: "I Need Some Fine Wine and You, You Need to Be Nicer - The Cardigans",
                    linkType: .youtubeVideo(code: "huobAY7gl30")
                ),
                SongLink(
                    id:        "hell-is-round-the-corner",
                    listText:  "Mini-documentary about the recording of this song",
                    linkType: .youtubeLink(code: "O-3-46RD2W8")
                )
            ])
        )

    }
}
