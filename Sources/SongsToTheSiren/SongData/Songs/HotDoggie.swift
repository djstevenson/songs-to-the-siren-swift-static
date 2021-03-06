import Foundation
extension Song {
    static func hotDoggie() -> Song {
        Song (
            id:        71,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Colourbox",
            title:     "Hot Doggie",
            album:     "Lonely Is An Eyesore",
            released:  "15th June 1987",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1601764570),
            updatedAt: Date(timeIntervalSince1970: 1601764570),
            tags:      [.decade1980s, .decade4AD, .brothers, .compilationAlbum, .lonelyIsAnEyesore, .sample],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "yt",
                    embedText: "Hot Doggie",
                    listText:  "Hot Doggie - Colourbox",
                    linkType:  .youtubeLink(code: "https://youtu.be/HmJOSILZ5y0")
                ),
                SongLink(
                    id:        "yt-breakdown",
                    embedText: "Breakdown",
                    listText:  "Breakdown - Colourbox",
                    linkType:  .youtubeLink(code: "https://youtu.be/QgePMNwllmA")
                ),
                SongLink(
                    id:        "yt-baby",
                    embedText: "Baby I Love You So",
                    listText:  "Baby I Love You So - Colourbox",
                    linkType:  .youtubeLink(code: "https://youtu.be/o0h2zVmxutA")
                ),
                SongLink(
                    id:        "yt-world-cup",
                    embedText: "The Official Colourbox World Cup Theme",
                    listText:  "The Official Colourbox World Cup Theme - Colourbox",
                    linkType:  .youtubeLink(code: "https://youtu.be/Dp8dMveAYZc")
                ),
                SongLink(
                    id:        "yt-samples",
                    embedText: "list of samples",
                    listText:  "List of voice samples in Hot Doggie",
                    linkType:  .youtubeLink(code: "http://web.mit.edu/klund/www/cbox.txt")
                ),
                SongLink(
                    id:        "pump-up-the-volume",
                    embedText: "later",
                    listText:  "Pump Up The Volume - M|A|R|R|S",
                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/72/view")
                ),
                SongLink(
                    id:        "",
                    embedText: "",
                    listText:  "Fish - Throwing Muses (also from Lonely Is An Eyesore)",
                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/15/view")
                ),
                SongLink(
                    id:        "lonely-is-an-eyesore",
                    embedText: "Lonely Is An Eyesore",
                    listText:  "Lonely Is An Eyesore - 4AD Compilation",
                    linkType:  .youtubeLink(code: "https://songstothesiren.com/?tags=116")
                )
            ])
        )
    }
}
