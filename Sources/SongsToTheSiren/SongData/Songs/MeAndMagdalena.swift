import Foundation
extension Song {
    static func meAndMagdalena() -> Song {
        Song (
            id:        75,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Monkees",
            title:     "Me & Magdalena",
            album:     "Good Times! (2016)",
            released:  "20th May 2016 (single), 27th May 2016 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1603411680),
            updatedAt: Date(timeIntervalSince1970: 1603411680),
            tags:      [.decade2010s, .platinum2016],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Me & Magdalena - The Monkees (audio)",
                    linkType:  .youtubeVideo(code: "FfruDTmFDUA")
                ),
                SongLink(
                    id:        "live",
                    listText:  "Me & Magdalena (live) - The Monkees",
                    linkType:  .youtubeLink(code: "0a2_0tqQvQ0")
                ),
                SongLink(
                    id:        "gibbard",
                    embedText: "this song solo",
                    listText:  "Me & Magdalena - Ben Gibbard (Tiny Desk Concert)",
                    linkType:  .youtubeLink(code: "HXGyYeG4eRc", offset: 236)
                ),
                SongLink(
                    id:        "tiny-desk",
                    embedText: "NPR Music Tiny Desk Concerts",
                    listText:  "NPR Music Tiny Desk Concerts",
                    linkType:  .youtubePlaylist(list: "PL1B627337ED6F55F0")
                )
            ])
        )
    }
}
