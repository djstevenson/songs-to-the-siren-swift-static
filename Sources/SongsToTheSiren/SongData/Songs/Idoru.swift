import Foundation
extension Song {
    static func idoru() -> Song {
        Song (
            id:        80,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Grimes",
            title:     "Idoru",
            album:     "Miss Athropocene (2020)",
            released:  "21st February 2020",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1615597028),
            updatedAt: Date(timeIntervalSince1970: 1615597028),
            tags:      [.electronic, .decade2020s, .year2020, .fourAD],
            country:   [.canada],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Idoru - Grimes",
                    linkType:  .youtubeVideo(code: "oCrhTU9HkVQ")
                ),
                SongLink(
                    id:        "time-is-hardcore",
                    embedText: "Time Is Hardcore",
                    listText:  "Time Is Hardcore (2020) - High Contrast ft Kae Tempest and Anita Bray",
                    linkType:  .song(song: "Idoru")
                )
            ])
        )
    }
}
