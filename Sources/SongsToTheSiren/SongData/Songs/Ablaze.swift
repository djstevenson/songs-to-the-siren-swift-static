import Foundation
extension Song {
    static func ablaze() -> Song {
        Song (
            id:        70,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "School of Seven Bells",
            title:     "Ablaze",
            album:     "SVIIB (2016)",
            released:  "12th February 2016 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1601416802),
            updatedAt: Date(timeIntervalSince1970: 1601416802),
            tags:      [.decade2010s, .platinum2016, .electronic, .openingTrack, .posthumous],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Ablaze",
                    listText:  "Ablaze - School of Seven Bells",
                    linkType:  .youtubeVideo(code: "dPWJ0MreHeg")
                ),
                SongLink(
                    id:        "band-wiki",
                    embedText: "School of Seven Bells",
                    listText:  "School of Seven Bells - Wikipedia",
                    linkType:  .wikipedia(page: "School_of_Seven_Bells")
                ),
                SongLink(
                    id:        "benjamin-wiki",
                    embedText: "Benjamin Curtis",
                    listText:  "Benjamin Curtis - Wikipedia",
                    linkType:  .wikipedia(page: "Benjamin_Curtis_(musician)")
                ),
                SongLink(
                    id:        "secret-machines",
                    embedText: "(The) Secret Machines",
                    listText:  "(The) Secret Machines - Wikipedia",
                    linkType:  .wikipedia(page: "Secret_Machines")
                ),
                SongLink(
                    id:        "nowhere-again",
                    listText:  "Nowhere Again - Secret Machines",
                    linkType:  .youtubeLink(code: "e1rvmJOSnKE")
                )
            ])
        )
    }
}
