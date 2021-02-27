import Foundation
extension Song {
    static func paranoidAndroid() -> Song {
        Song (
            id:        54,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Radiohead",
            title:     "Paranoid Android",
            album:     "OK Computer (1997)",
            released:  "26th May 1997 (single), 21st May 1997 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1591132847),
            updatedAt: Date(timeIntervalSince1970: 1591132847),
            tags:      [.decade1990s, .complex, .longSongs],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Paranoid Android",
                    listText:  "Paranoid Android - Radiohead",
                    linkType:  .youtubeVideo(code: "fHiGbolFFGw")
                ),
                SongLink(
                    id:        "live",
                    listText:  "Paranoid Android (Live 2003) - Radiohead",
                    linkType:  .youtubeLink(code: "lkDBzqlwePQ", offset: 26)
                )
            ])
        )
    }
}
