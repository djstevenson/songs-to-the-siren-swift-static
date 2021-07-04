import Foundation
extension Song {

    static func nautilus() -> Song {
        Song(
            id:        39,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Anna Meredith",
            title:     "Nautilus",
            album:     "Varmints (2016)",
            released:  "4th March 2016",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1589226389),
            updatedAt: Date(timeIntervalSince1970: 1615142851+39),
            tags:      [.decade2010s, .platinum2016, .classical, .debut, .electronic, .openingTrack],
            country:   [.uk, .scotland],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Nautilus",
                    listText:  "Nautilus - Anna Meredith",
                    linkType:  .youtubeVideo(code: "Vajhs2wBeCU")
                ),
                SongLink(
                    id:        "npr-tiny-desk",
                    embedText: "NPR Music Tiny Desk Concert",
                    listText:  "Nautilus (Live - NPR Tiny Desk) - Anna Meredith",
                    linkType:  .youtubeLink(code: "36FNJiP8GWk")
                ),
                SongLink(
                    id:        "npr-vapours",
                    embedText: "NPR Tiny Desk version",
                    listText:  "The Vapours (Live - NPR Tiny Desk) - Anna Meredith",
                    linkType:  .youtubeLink(code: "36FNJiP8GWk", offset: 730)
                ),
                SongLink(
                    id:        "paramour",
                    embedText: "Paramour",
                    listText:  "Paramour - Anna Meredith",
                    linkType:  .youtubeLink(code: "yjmZLaymJU8")
                ),
            ])
        )
    }
}
