import Foundation
extension Song {

    static func everythingIsTheSame() -> Song {
        Song(
            id:        23,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Pull In Emergency",
            title:     "Everything Is The Same",
            album:     "Pull In Emergency",
            released:  "9th June 2010 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587933658),
            updatedAt: Date(timeIntervalSince1970: 1615142851+23),
            tags:      [.decade2010s, .indie, .kids, .openingTrack],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Everything Is The Same - Pull In Emergency",
                    linkType:  .youtubeVideo(code: "DW06NVc2MrA")
                ),
                SongLink(
                    id:        "o-chapman",
                    listText:  "Morning Song - O Chapman (duet with Faith Barker)",
                    linkType:  .youtubeLink(code: "vA3jaXVujos", offset: 17)
                ),
                SongLink(
                    id:        "big-deal",
                    embedText: "Big Deal",
                    listText:  "Swapping Spit - Big Deal (Alice Costelloe)",
                    linkType:  .youtubeLink(code: "V7xBkwIVgk8")
                ),
            ])
        )
    }
}
