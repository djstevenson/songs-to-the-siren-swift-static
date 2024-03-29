import Foundation
extension Song {

    static func planetOfSound() -> Song {
        Song(
            id:        7,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Pixies",
            title:     "Planet of Sound",
            album:     "Trompe Le Monde (1991)",
            released:  "28th May 1991 (single), 3rd September 1991 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587084155),
            updatedAt: Date(timeIntervalSince1970: 1687060831),
            tags:      [.indie, .fourAD, .decade1990s, .sciFi],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Planet of Sound - Pixies",
                    linkType:  .youtubeVideo(code: "TFl4AemxH4g")
                ),
            ])
        )

    }
}
