import Foundation
extension Song {
    static func karen() -> Song {
        Song (
            id:        57,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Chew Lips",
            title:     "Karen",
            album:     "Unicorn (2010)",
            released:  "25th January 2010 (LP), 28th March 2010 (Single)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1592002049),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade2010s, .bristol, .debut, .electronic],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Karen - Chew Lips",
                    linkType:  .youtubeVideo(code: "OQsYiSr58aU")
                ),
                SongLink(
                    id:        "interview",
                    embedText: "interview",
                    listText:  "Interview with Tigs",
                    linkType:  .other(url: URL(string: "https://thequietus.com/articles/10715-chew-lips-tigs-huertas-interview-cervical-cancer")!)
                ),
                SongLink(
                    id:        "netsky",
                    listText:  "Karen (Netsky Remix) - Chew Lips",
                    linkType:  .youtubeLink(code: "Uy7mR_X2Aqk")
                ),
                SongLink(
                    id:        "otten",
                    listText:  "Karen (Mark Otten Remix) - Chew Lips",
                    linkType:  .youtubeLink(code: "j_h8WSIfiqI")
                ),
                SongLink(
                    id:        "acoustic",
                    listText:  "Karen (acoustic) - Chew Lips",
                    linkType:  .youtubeLink(code: "EfClzEj_hwQ")
                )
            ])
        )
    }
}
