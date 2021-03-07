import Foundation
extension Song {
    static func sweetJaneLR() -> Song {
        Song (
            id:        68,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Lou Reed",
            title:     "Sweet Jane",
            album:     "Rock 'n' Roll Animal",
            released:  "February 1974",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1597529247),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade1970s, .live],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Intro/Sweet Jane",
                    listText:  "Intro/Sweet Jane (live) - Lou Reed",
                    linkType:  .youtubeVideo(code: "A5HfwS6Ey_4")
                ),
                SongLink(
                    id:        "steve-hunter",
                    embedText: "live with Steve Hunter",
                    listText:  "Sweet Jane (live) - Lou Reed and Steve Hunter",
                    linkType:  .youtubeLink(code: "LrMLt9bMd_I")
                ),
                SongLink(
                    id:        "cowboy-junkies",
                    embedText: "Cowboy Junkies",
                    listText:  "Sweet Jane - Cowboy Junkies",
                    linkType:  .song(song: "SweetJaneCJ")
                )
            ])
        )
    }
}
