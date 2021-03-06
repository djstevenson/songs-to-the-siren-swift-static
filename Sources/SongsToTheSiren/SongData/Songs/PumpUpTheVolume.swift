import Foundation
extension Song {
    static func pumpUpTheVolume() -> Song {
        Song (
            id:        72,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "M/A/R/R/S",
            title:     "Pump Up The Volume",
            album:     "Single (1987)",
            released:  "3rd August 1987",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1601858169),
            updatedAt: Date(timeIntervalSince1970: 1601858169),
            tags:      [.decade1990s, .fourAD, .collaboration, .electronic, .sample, .tr909],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Pump Up The Volume",
                    listText:  "Pump Up The Volume - M|A|R|R|S",
                    linkType:  .youtubeVideo(code: "w9gOQgfPW4Y")
                ),
                SongLink(
                    id:        "soft-cell",
                    embedText: "Tainted Love by Soft Cell",
                    listText:  "Tainted Love - Soft Cell",
                    linkType:  .youtubeLink(code: "XZVpR3Pk-r8")
                ),
                SongLink(
                    id:        "gloria-jones",
                    embedText: "Tainted Love by Gloria Jones",
                    listText:  "Tainted Love - Gloria Jones",
                    linkType:  .youtubeLink(code: "OJKe2j9Wjh4")
                ),
                SongLink(
                    id:        "wiki",
                    embedText: "Wikipedia",
                    listText:  "Pump Up The Volume sample list",
                    linkType:  .wikipedia(page: "Pump_Up_the_Volume_(song)#Samples_used")
                ),
                SongLink(
                    id:        "roadblock",
                    embedText: "Roadblock",
                    listText:  "Roadblock - Stock, Aitken, Waterman",
                    linkType:  .youtubeLink(code: "PZbAEHswIfw")
                ),
                SongLink(
                    id:        "tr909",
                    embedText: "Roland TR-909",
                    listText:  "Roland TR-909",
                    linkType:  .wikipedia(page: "Roland_TR-909")
                ),
                SongLink(
                    id:        "hot-doggie",
                    embedText: "Hot Doggie",
                    listText:  "Hot Doggie - Colourbox",
                    linkType:  .song(song: "HotDoggie")
                )
            ])
        )
    }
}
