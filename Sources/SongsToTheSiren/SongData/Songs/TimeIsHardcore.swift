import Foundation
extension Song {
    static func timeIsHardcore() -> Song {
        Song(
            id:        81,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "High Contrast ft. Kae Tempest and Anita Blay",
            title:     "Time Is Hardcore",
            album:     "Notes From The Underground",
            released:  "12th August 2020 (single), 13th November 2020 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1615597388),
            updatedAt: Date(timeIntervalSince1970: 1615597388),
            tags:      [.electronic, .decade2020s, .year2020, .sample],
            country:   [.uk, .wales],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Time Is Hardcore - High Contrast ft Kae Tempest and Anita Blay",
                    linkType:  .youtubeVideo(code: "6eX8Ea9cuHA")
                ),
                SongLink(
                    id:        "idoru",
                    embedText: "Idoru",
                    listText:  "Idoru (2020) - Grimes",
                    linkType:  .song(song: "Idoru")
                ),
            ])
        )
    }
}
