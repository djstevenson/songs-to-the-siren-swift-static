import Foundation
extension Song {

    static func deceptacon() -> Song {
        Song(
            id:        11,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Le Tigre",
            title:     "Deceptacon",
            album:     "Le Tigre (1999)",
            released:  "25th October 1999",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587319101),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.decade1990s, .electronic, .punk, .kathleenHanna, .riotGrrrl],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText: "Deceptacon - Le Tigre (official video)",
                    linkType: .youtubeVideo(code: "EU1CDSP7FRk")
                ),
                SongLink(
                    id:        "live-performance",
                    embedText: "live performance",
                    listText:  "Decaptacon - Le Tigre (live)",
                    linkType: .youtubeLink(code: "VG9UJJposmg")
                ),
                SongLink(
                    id:        "the-punk-singer-trailer",
                    embedText: "The Punk Singer",
                    listText:  "The Punk Singer (official trailer)",
                    linkType: .youtubeLink(code: "zMbLzaVkn2s")
                ),
            ])
        )

    }
}
