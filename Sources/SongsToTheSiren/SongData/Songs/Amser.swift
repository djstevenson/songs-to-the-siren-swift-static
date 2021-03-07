import Foundation
extension Song {

    static func amser() -> Song {
        Song (
            id:        36,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Gwenno",
            title:     "Amser",
            album:     "Y Dydd Olaf",
            released:  "27th October 2014 (Peski Records), 24th July 2015 (Heavenly re-release)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1588794388),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade2010s, .cornish, .electronic],
            country:   [.uk, .wales],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Amser - Gwenno",
                    linkType:  .youtubeVideo(code: "oleVny7jz7Q")
                ),
                SongLink(
                    id:        "le-kov",
                    embedText: "Le Kov",
                    listText:  "Le Kov (Cornish LP) - Gwenno",
                    linkType:  .wikipedia(page: "Le_Kov")
                ),
                SongLink(
                    id:        "y-dydd-olaf",
                    embedText: "Y Dydd Olaf",
                    listText:  "Y Dydd Olaf (Welsh LP) - Gwenno",
                    linkType:  .youtubeLink(code: "Y_Dydd_Olaf_(album)")
                )
            ])
        )
    }
}
