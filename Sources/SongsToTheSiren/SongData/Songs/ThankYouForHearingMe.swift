import Foundation
extension Song {

    static func thankYouForHearingMe() -> Song {
        Song(
            id:        90,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Sinéad O’Connor",
            title:     "Thank You For Hearing Me",
            album:     "Universal Mother (1994)",
            released:  "13th September 1994",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1690423056),
            updatedAt: Date(timeIntervalSince1970: 1690423056),
            tags:      [.decade1990s],
            country:   [.ireland],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Thank You For Hearing Me (Live) - Sinéad O'Connor",
                    linkType:  .youtubeVideo(code: "lJB_gSF0vsU")
                ),
                SongLink(
                    id:        "alternate",
                    listText:  "Thank You For Hearing Me (Alternate Live) - Sinéad O'Connor",
                    linkType:  .youtubeLink(code: "TPOM20kgWlc")
                ),
                SongLink(
                    id:        "this-is-the-last-day-of-our-acquaintance",
                    embedText: "This Is The Last Day of Our Acquaintance",
                    listText:  "This Is The Last Day of Our Acquaintance (Live) - Sinéad O'Connor",
                    linkType:  .youtubeLink(code: "qiEcut07GrM")
                ),
                SongLink(
                    id:        "fire-in-babylon",
                    embedText: "Fire In Babylon",
                    listText:  "Fire in Babylon (Universal Mother) - Sinéad O'Connor",
                    linkType:  .youtubeLink(code: "R29W_PvTT7M")
                )
            ])
        )
    }
}
