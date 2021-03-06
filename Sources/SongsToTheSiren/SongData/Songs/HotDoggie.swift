import Foundation
extension Song {
    static func hotDoggie() -> Song {
        Song (
            id:        71,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Colourbox",
            title:     "Hot Doggie",
            album:     "Lonely Is An Eyesore",
            released:  "15th June 1987",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1601764570),
            updatedAt: Date(timeIntervalSince1970: 1601764570),
            tags:      [.decade1980s, .fourAD, .brothers, .compilationAlbum, .lonelyIsAnEyesore, .sample],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Hot Doggie",
                    listText:  "Hot Doggie - Colourbox",
                    linkType:  .youtubeVideo(code: "HmJOSILZ5y0")
                ),
                SongLink(
                    id:        "breakdown",
                    embedText: "Breakdown",
                    listText:  "Breakdown - Colourbox",
                    linkType:  .youtubeLink(code: "QgePMNwllmA")
                ),
                SongLink(
                    id:        "baby",
                    embedText: "Baby I Love You So",
                    listText:  "Baby I Love You So - Colourbox",
                    linkType:  .youtubeLink(code: "o0h2zVmxutA")
                ),
                SongLink(
                    id:        "world-cup",
                    embedText: "The Official Colourbox World Cup Theme",
                    listText:  "The Official Colourbox World Cup Theme - Colourbox",
                    linkType:  .youtubeLink(code: "Dp8dMveAYZc")
                ),
                SongLink(
                    id:        "samples",
                    embedText: "list of samples",
                    listText:  "List of voice samples in Hot Doggie",
                    linkType:  .other(url: URL(string: "http://web.mit.edu/klund/www/cbox.txt")!)
                ),
                SongLink(
                    id:        "pump-up-the-volume",
                    embedText: "later",
                    listText:  "Pump Up The Volume - M|A|R|R|S",
                    linkType:  .song(song: "PumpUpTheVolume")
                )
            ])
        )
    }
}
