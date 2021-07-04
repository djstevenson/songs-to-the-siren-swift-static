import Foundation
extension Song {
    static func likeIUsedTo() -> Song {
        Song(
            id:        86,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Sharon Van Etten & Angel Olsen",
            title:     "Like I Used To",
            album:     "Single only",
            released:  "20th May 2021",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1625332678),
            updatedAt: Date(timeIntervalSince1970: 1625332678),
            tags:      [.decade2020s, .collaboration],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Like I Used To - Sharon Van Etten & Angel Olsen",
                    linkType:  .youtubeVideo(code: "5ibj87fwRaM")
                ),
                SongLink(
                    id:        "arp-at-1-32",
                    embedText: "1m32s",
                    linkType:  .youtubeLink(code: "5ibj87fwRaM", offset: 92)
                ),
                SongLink(
                    id:        "live-tv-performance",
                    embedText: "live TV peformance",
                    listText:  "Like I Used To (Live) - Sharon Van Etten & Angel Olsen",
                    linkType:  .youtubeLink(code: "hHRTKF7PRvw")
                ),
            ])
        )
    }
}

