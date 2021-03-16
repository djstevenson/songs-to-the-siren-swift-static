import Foundation
extension Song {

    static func supervixen() -> Song {
        Song(
            id:        2,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Garbage",
            title:     "Supervixen",
            album:     "Garbage (1995)",
            released:  "15th August 1995",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1586710375),
            updatedAt: Date(timeIntervalSince1970: 1615142851+2),
            tags:      [.debut, .decade1990s, .openingTrack],
            country:   [.scotland, .uk, .usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Supervixen - Garbage (audio)",
                    linkType:  .youtubeVideo(code: "qRdZ1eEciQ4")
                ),
                SongLink(
                    id:        "angelfish",
                    embedText: "an Angelfish side-project",
                    listText:  "Suffocate Me - Angelfish",
                    linkType:  .youtubeLink(code: "cO-YCm4GXw8")
                ),
            ])
        )

    }
}
