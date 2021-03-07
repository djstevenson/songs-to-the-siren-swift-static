import Foundation
extension Song {
    static func whiteLove() -> Song {
        Song (
            id:        52,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "One Dove",
            title:     "White Love (Radio Mix)",
            album:     "Morning Dove White",
            released:  "19th October 1993 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1590792810),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade1990s, .electronic],
            country:   [.uk, .scotland],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "White Love",
                    listText:  "White Love (Radio Mix) - One Dove",
                    linkType:  .youtubeVideo(code: "IMb68_EF0ig")
                ),
                SongLink(
                    id:        "guitar-paradise-mix",
                    embedText: "Guitar Paradise Mix",
                    listText:  "White Love (Guitar Paradise Mix) - One Dove",
                    linkType:  .youtubeLink(code: "ctxT_nBZIQ4")
                ),
                SongLink(
                    id:        "piano-reprise",
                    embedText: "Piano Reprise",
                    listText:  "White Love (Piano Reprise) - One Dove",
                    linkType:  .youtubeLink(code: "81WH5RlKq0I")
                ),
                SongLink(
                    id:        "solo",
                    embedText: "solo career",
                    listText:  "Message Personnel - Dot Allison",
                    linkType:  .song(song: "MessagePersonnel")
                ),
                SongLink(
                    id:        "guest",
                    embedText: "guest with",
                    listText:  "Dirge - Death In Vegas",
                    linkType:  .song(song: "Dirge")
                )
            ])
        )
    }
}
