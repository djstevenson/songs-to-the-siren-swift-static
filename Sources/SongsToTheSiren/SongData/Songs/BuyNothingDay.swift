import Foundation
extension Song {
    static func buyNothingDay() -> Song {
        Song (
            id:        61,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Go! Team",
            title:     "Buy Nothing Day",
            album:     "Rolling Blackouts",
            released:  "24th January 2011 (single), 31st January 2011 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1593813990),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade2010s, .brighton, .guestVocals, .twoDrummers],
            country:   [.uk, .usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Buy Nothing Day - The Go! Team",
                    linkType:  .youtubeVideo(code: "fQ4f_lgdYz8")
                ),
                SongLink(
                    id:        "best-coast",
                    embedText: "Best Coast",
                    listText:  "Best Coast",
                    linkType:  .wikipedia(page: "Best_Coast")
                )
            ])
        )
    }
}
