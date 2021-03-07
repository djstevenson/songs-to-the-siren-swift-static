import Foundation
extension Song {

    static func saltSpring() -> Song {
        Song (
            id:        46,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Anomie Belle",
            title:     "Salt Spring",
            album:     "Flux",
            released:  "26th August 2016",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1590362135),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.decade2010s, .platinum2016, .electronic, .glitch],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Salt Spring - Anomie Belle",
                    linkType:  .youtubeVideo(code: "-6SvYkAlT1w")
                ),
                SongLink(
                    id:        "bonobo",
                    embedText: "Bonobo",
                    listText:  "Bonobo",
                    linkType:  .wikipedia(page: "Bonobo_(musician)")
                ),
                SongLink(
                    id:        "yppah",
                    embedText: "Yppah",
                    listText:  "Yppah",
                    linkType:  .wikipedia(page: "Yppah")
                ),
                SongLink(
                    id:        "lovers",
                    embedText: "Lovers",
                    listText:  "Lovers - Anomie Belle",
                    linkType:  .youtubeLink(code: "7zYc24J3A8o")
                ),
                SongLink(
                    id:        "film-burn",
                    listText:  "Film Burn - Yppah (feat. Anomie Belle)",
                    linkType:  .song(song: "FilmBurn")
                ),
                SongLink(
                    id:        "gumball-machine-weekend",
                    embedText: "Gumball Machine Weekend",
                    listText:  "Gumball Machine Weekend - Yppah",
                    linkType:  .song(song: "GumballMachineWeekend")
                ),
                SongLink(
                    id:        "picture-perfect",
                    embedText: "Picture Perfect",
                    listText:  "Picture Perfect (live) - Anomie Belle ft Jon Auer",
                    linkType:  .youtubeLink(code: "288X1pGR0fI")
                )
            ])
        )
    }
}
