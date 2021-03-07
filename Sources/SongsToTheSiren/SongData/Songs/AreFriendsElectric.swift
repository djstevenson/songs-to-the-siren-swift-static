import Foundation
extension Song {
    static func areFriendsElectric() -> Song {
        Song (
            id:        77,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Tubeway Army",
            title:     "Are ‘Friends’ Electric?",
            album:     "Replicas",
            released:  "4th May 1979 (single), 4th April 1979 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1609118609),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.decade1970s, .electronic],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Are ‘Friends’ Electric? - Tubeway Army",
                    linkType:  .youtubeVideo(code: "QzSM3pRtgcM")
                ),
                SongLink(
                    id:        "yt2013",
                    embedText: "2013 re-recording",
                    listText:  "Are ‘Friends’ Electric? (2013 re-recording) - Gary Numan",
                    linkType:  .youtubeLink(code: "22Z4Tv1zn-s", offset: 37)
                )
            ])
        )
    }
}
