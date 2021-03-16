import Foundation
extension Song {
    static func runningFromTheThoughts() -> Song {
        Song(
            id:        67,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Dub Pistols feat. Terry Hall",
            title:     "Running From the Thoughts",
            album:     "Speakers and Tweeters (2007)",
            released:  "2nd April 2007 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1595717863),
            updatedAt: Date(timeIntervalSince1970: 1615142851+67),
            tags:      [.decade2000s, .dub, .reggae, .terryHall],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Running from the Thoughts",
                    listText:  "Running from the Thoughts - Dub Pistols (ft. Terry Hall)",
                    linkType:  .youtubeVideo(code: "ytfhZ8VOujY")
                ),
                SongLink(
                    id:        "cover",
                    embedText: "cover",
                    listText:  "Gangsters - Dub Pistols",
                    linkType:  .youtubeLink(code: "TdBu5suGC1c")
                ),
                SongLink(
                    id:        "gangsters",
                    embedText: "Gangsters",
                    listText:  "Gangsters - Special AKA",
                    linkType:  .song(song: "Gangsters")
                ),
                SongLink(
                    id:        "speed-of-light",
                    embedText: "Speed of Light",
                    listText:  "Speed of Light - Dub Pistols",
                    linkType:  .youtubeLink(code: "14WdwzpC_Ys")
                ),
            ])
        )
    }
}
