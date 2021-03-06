import Foundation
extension Song {
    static func outsideTheTrainsDontRunOnTime() -> Song {
        Song (
            id:        76,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Gang of Four",
            title:     "Outside the Trains Don't Run on Time",
            album:     "Single (1980)",
            released:  "1980 (single), 1981 (Solid Gold LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1606611166),
            updatedAt: Date(timeIntervalSince1970: 1606611166),
            tags:      [.decade1980s, .dub, .funk, .leeds, .postPunk],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Outside the Trains Don't Run on Time - Gang Of Four (audio only)",
                    linkType:  .youtubeVideo(code: "A6-2wB44AcE")
                ),
                SongLink(
                    id:        "damaged-goods",
                    embedText: "Damaged Goods",
                    listText:  "Damaged Goods - Gang of Four (audio only)",
                    linkType:  .youtubeLink(code: "byCqOvRMOvo")
                ),
                SongLink(
                    id:        "tourist",
                    embedText: "At Home He's a Tourist",
                    listText:  "At Home He's A Tourist - Gang of Four",
                    linkType:  .youtubeLink(code: "ElhAysq3O6c")
                ),
                SongLink(
                    id:        "death",
                    embedText: "death",
                    listText:  "Guitarist Andy Gill’s obituary in the NME",
                    linkType:  .other(url: URL(string: "https://www.nme.com/blogs/andy-gill-obituary-1956-2020-gang-of-four-2604037")!)
                ),
                SongLink(
                    id:        "poverty",
                    embedText: "To Hell With Poverty",
                    listText:  "To Hell With Poverty - Gang of Four (audio only)",
                    linkType:  .youtubeLink(code: "QRjjVFC-oG4")
                ),
                SongLink(
                    id:        "poverty-ogwt",
                    embedText: "To Hell With Poverty OGWT",
                    listText:  "To Hell With Poverty - Gang of Four (live on Old Grey Whistle Test)",
                    linkType:  .youtubeLink(code: "I_QJwR6D9d4")
                ),
                SongLink(
                    id:        "entertainment",
                    embedText: "Entertainment!",
                    listText:  "Entertainment! - first LP (Wikipedia)",
                    linkType:  .wikipedia(page: "Entertainment!")
                ),
                SongLink(
                    id:        "solid-gold",
                    embedText: "Solid Gold",
                    listText:  "Solid Gold - second LP (Wikipedia)",
                    linkType:  .wikipedia(page: "Solid_Gold_(album)")
                )
            ])
        )
    }
}
