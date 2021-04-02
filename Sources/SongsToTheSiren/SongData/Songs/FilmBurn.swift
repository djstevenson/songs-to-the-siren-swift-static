import Foundation
extension Song {
    static func filmBurn() -> Song {
        Song(
            id:        48,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Yppah (feat. Anomie Belle)",
            title:     "Film Burn",
            album:     "Eighty One (2012)",
            released:  "11th February 2012",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1590362139),
            updatedAt: Date(timeIntervalSince1970: 1615142851+48),
            tags:      [.decade2010s, .collaboration, .electronic],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Film Burn - Yppah (feat. Anomie Belle)",
                    linkType:  .youtubeVideo(code: "Nmr3DEiNc0k")
                ),
                SongLink(
                    id:        "bonobo",
                    embedText: "Bonobo",
                    listText:  "Bonobo",
                    linkType:  .wikipedia(page: "Bonobo_(musician)")
                ),
                SongLink(
                    id:        "kexp",
                    embedText: "live KEXP performance",
                    listText:  "Yppah and Anomie Belle, live on KEXP",
                    linkType:  .youtubeLink(code: "rBSvq64cQU4", offset: 249)
                ),
                SongLink(
                    id:        "salt-spring",
                    embedText: "Salt Spring",
                    listText:  "Salt Spring - Anomie Belle",
                    linkType:  .song(song: "SaltSpring")
                ),
                SongLink(
                    id:        "gumball-machine-weekend",
                    embedText: "Gumball Machine Weekend",
                    listText:  "Gumball Machine Weekend - Yppah",
                    linkType:  .song(song: "GumballMachineWeekend")
                ),
            ])
        )
    }
}
