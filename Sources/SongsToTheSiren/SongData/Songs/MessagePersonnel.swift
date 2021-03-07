import Foundation
extension Song {
    static func messagePersonnel() -> Song {
        Song (
            id:        51,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Dot Allison",
            title:     "Message Personnel",
            album:     "Afterglow (1999)",
            released:  "6th October 1999 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1590792809),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.decade1990s, .electronic],
            country:   [.uk, .scotland],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Message Personnel (album mix) - Dot Allison",
                    linkType:  .youtubeLink(code: "https://youtu.be/UR41J9VbSUs")
                ),
                SongLink(
                    id:        "arab-strap",
                    embedText: "Arab Strap",
                    listText:  "Message Personnel (Arab Strap remix) - Dot Allison",
                    linkType:  .youtubeLink(code: "https://youtu.be/Mq6iv5IwfAE")
                ),
                SongLink(
                    id:        "death-in-vegas",
                    listText:  "Message Personnel (Death in Vegas remix) - Dot Allison",
                    linkType:  .youtubeLink(code: "https://youtu.be/yQSTPs39HNg")
                ),
                SongLink(
                    id:        "dirge",
                    embedText: "Dirge",
                    listText:  "Dirge - Death in Vegas",
                    linkType:  .song(song: "Dirge")
                ),
                SongLink(
                    id:        "white-love",
                    listText:  "White Love - One Dove",
                    linkType:  .song(song: "WhiteLove")
                )
            ])
        )
    }
}
