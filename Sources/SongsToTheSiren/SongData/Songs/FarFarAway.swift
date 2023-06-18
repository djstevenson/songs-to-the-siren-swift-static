import Foundation
extension Song {

    static func farFarAway() -> Song {
        Song(
            id:        33,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Slade",
            title:     "Far Far Away  / How Does It Feel?",
            album:     "Slade in Flame (1975)",
            released:  "11th October 1974 (Far Far Away), 7th February 1975 (How Does It Feel?)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1588715047),
            updatedAt: Date(timeIntervalSince1970: 1687060831),
            tags:      [.decade1970s, .twoForOne, .glam, .movie],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Far Far Away - Slade",
                    linkType:  .youtubeVideo(code: "qysk6IgeFmQ")
                ),
                SongLink(
                    id:        "how-does-it-feel",
                    listText:  "How Does It Feel? - Slade",
                    linkType:  .youtubeVideo(code: "2WvWyMe6y5c")
                ),
            ])
        )
    }
}
