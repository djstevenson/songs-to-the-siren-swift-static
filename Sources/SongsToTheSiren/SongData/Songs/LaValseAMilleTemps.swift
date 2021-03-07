import Foundation
extension Song {

    static func laValseAMilleTemps() -> Song {
        Song (
            id:        35,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Jacques Brel",
            title:     "La Valse à Mille Temps",
            album:     "Jacques Brel 4",
            released:  "1959",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1588794384),
            updatedAt: Date(timeIntervalSince1970: 1615142851+35),
            tags:      [.decade1950s, .puns, .sixMusic],
            country:   [.belgium],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "La Valse à Mille Temps (studio version) - Jacques Brel",
                    linkType:  .youtubeVideo(code: "s_76F95k0a8")
                ),
                SongLink(
                    id:        "live",
                    listText:  "La Valse à Mille Temps (TV performance) - Jacques Brel",
                    linkType:  .youtubeLink(code: "Zh8caAB8KkI")
                )
            ])
        )
    }
}
