import Foundation
extension Song {

    static func silentNight() -> Song {
        Song(
            id:        12,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Simon and Garfunkel",
            title:     "7 O’Clock News/Silent Night",
            album:     "Parsley, Sage, Rosemary and Thyme (1966)",
            released:  "10th October 1966",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587319104),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.christmasCarol, .spokenWord, .decade1960s],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText: "7 O’clock News / Silent Night - Simon and Garfunkel",
                    linkType: .youtubeVideo(code: "JkJlmYwMgRM")
                )
            ])
        )

    }
}
