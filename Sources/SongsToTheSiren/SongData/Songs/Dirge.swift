import Foundation
extension Song {
    static func dirge() -> Song {
        Song (
            id:        50,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Death in Vegas",
            title:     "Dirge",
            album:     "The Contino Sessions (1999)",
            released:  "13th September 1999 (LP), 24th April 2000 (Single)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1590792808),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade1990s, .collaboration, .guestVocals, .openingTrack],
            country:   [.uk, .scotland],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "single",
                    listText:  "Dirge (single mix) - Death In Vegas",
                    linkType:  .youtubeVideo(code: "F5nzwqj3utY")
                ),
                SongLink(
                    id:        "album",
                    embedText: "LP",
                    listText:  "Dirge (LP mix) - Death in Vegas",
                    linkType:  .youtubeLink(code: "oR_pxawRvng")
                ),
                SongLink(
                    id:        "dot-allison",
                    embedText: "Dot Allison",
                    listText:  "Message Personnel - Dot Allison",
                    linkType:  .song(song: "MessagePersonnel")
                ),
                SongLink(
                    id:        "white-love",
                    embedText: "White Love",
                    listText:  "White Love - One Dove",
                    linkType:  .song(song: "WhiteLove")
                )
            ])
        )
    }
}
