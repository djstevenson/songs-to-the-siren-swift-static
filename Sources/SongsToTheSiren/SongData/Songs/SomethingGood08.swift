import Foundation
extension Song {

    static func somethingGood08() -> Song {
        Song (
            id:        19,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Utah Saints",
            title:     "Something Good ’08",
            album:     "Utah Saints",
            released:  "1992 (single), 1993 (LP), 2008 (remix)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587674793),
            updatedAt: Date(timeIntervalSince1970: 1587674793),
            tags:      [.decade1990s, .decade2000s, .house, .remix, .sample],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Something Good ’08 - Utah Saints (remix)",
                    linkType:  .youtubeVideo(code: "m97WlpsuU74")
                ),
                SongLink(
                    id:        "yt-1992",
                    listText:  "Something Good - Utah Saints (original)",
                    linkType:  .youtubeVideo(code: "ixMWhpg0iXU")
                ),
                SongLink(
                    id:        "cloudbusting",
                    embedText: "Cloudbusting",
                    listText:  "Cloudbusting - Kate Bush",
                    linkType:  .youtubeLink(code: "pllRW9wETzw")
                )
            ])
        )
    }
}
