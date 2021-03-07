import Foundation
extension Song {
    static func limeHabit() -> Song {
        Song (
            id:        60,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Poliça",
            title:     "Lime Habit",
            album:     "United Crushers",
            released:  "13th November 2015 (single), 4th March 2016",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1593301732),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade2010s, .platinum2016, .twoDrummers],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Lime Habit - Poliça",
                    linkType:  .youtubeVideo(code: "ICruF30bCEI")
                ),
                SongLink(
                    id:        "live-context",
                    embedText: "live context",
                    listText:  "Lime Habit (live) - Poliça",
                    linkType:  .youtubeLink(code: "O7zz-UJnNWo")
                ),
                SongLink(
                    id:        "limelight",
                    embedText: "limelight",
                    listText:  "Limelight",
                    linkType:  .wikipedia(page: "Limelight")
                )
            ])
        )
    }
}
