import Foundation
extension Song {

    static func lostInThePlot() -> Song {
        Song(
            id:        4,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Dears",
            title:     "Lost in the Plot",
            album:     "No Cities Left (2003)",
            released:  "15th April 2003",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1586868114),
            updatedAt: Date(timeIntervalSince1970: 1615142851+4),
            tags:      [.husbandWife, .decade2000s],
            country:   [.canada],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Lost in the Plot - The Dears (Official Video)",
                    linkType:  .youtubeVideo(code: "u0zRxxBKZ1A")
                )
            ])
        )

    }
}
