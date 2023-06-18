import Foundation
extension Song {
    static func bathWhiteEP() -> Song {
        Song(
            id:        82,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "50 Foot Wave",
            title:     "Bath White EP",
            album:     "Bath White EP (2016)",
            released:  "27th May 2016",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1617324769),
            updatedAt: Date(timeIntervalSince1970: 1687058738),
            tags:      [.decade2010s, .sideProject, .ep],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Bath White",
                    listText:  "Bath White - 50 Foot Wave",
                    linkType:  .youtubeVideo(code: "o1Ak-VMSXr8")
                ),
                SongLink(
                    id:        "gods-not-a-dick",
                    embedText: "God’s Not A Dick",
                    listText:  "God’s Not A Dick - 50 Foot Wave",
                    linkType:  .youtubeLink(code: "W1EwNpcSXBI")
                ),
                SongLink(
                    id:        "human",
                    embedText: "Human",
                    listText:  "Human - 50 Foot Wave",
                    linkType:  .youtubeLink(code: "AlPLjDSBpXY")
                ),
                SongLink(
                    id:        "ratted-out",
                    embedText: "Ratted Out",
                    listText:  "Ratted Out - 50 Foot Wave",
                    linkType:  .youtubeLink(code: "9V61BYhGyXE")
                ),
                SongLink(
                    id:        "st-christopher",
                    embedText: "St. Christopher",
                    listText:  "St. Christopher - 50 Foot Wave",
                    linkType:  .youtubeLink(code: "azp98S4tvGI")
                ),
                SongLink(
                    id:        "sun-salute",
                    embedText: "Sun Salute",
                    listText:  "Sun Salute - 50 Foot Wave",
                    linkType:  .youtubeLink(code: "hKeZlb7Og0o")
                )
            ])
        )
    }
}
