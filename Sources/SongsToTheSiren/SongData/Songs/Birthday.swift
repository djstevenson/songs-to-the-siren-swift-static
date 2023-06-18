import Foundation
extension Song {

    static func birthday() -> Song {
        Song(
            id:        34,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Sugarcubes (Sykurmolarnir)",
            title:     "Ammæli (Birthday)",
            album:     "Life’s Too Good",
            released:  "August 1987 (single, in English). April 1988 (LP, in English)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1588794382),
            updatedAt: Date(timeIntervalSince1970: 1687060831),
            tags:      [.decade1980s, .debut, .oneLittleIndian],
            country:   [.iceland],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Birthday (Icelandic) - Sugarcubes",
                    linkType:  .youtubeVideo(code: "F6hGc7S8d88", offset: 3)
                ),
                SongLink(
                    id:        "english",
                    embedText: "English",
                    listText:  "Birthday (English) - Sugarcubes",
                    linkType:  .youtubeLink(code: "BFQPNApwJGU", offset: 6)
                ),
                SongLink(
                    id:        "coldsweat",
                    embedText: "Cold Sweat",
                    listText:  "Cold Sweat - Sugarcubes",
                    linkType:  .youtubeLink(code: "y8XVHnNaJOo", offset: 7)
                ),
                SongLink(
                    id:        "deus",
                    embedText: "Deus",
                    listText:  "Deus - Sugarcubes",
                    linkType:  .youtubeLink(code: "fq2dWTBVZD4", offset: 4)
                ),
                SongLink(
                    id:        "blue-eyed-pop",
                    embedText: "Blue Eyed Pop",
                    listText:  "Blue Eyed Pop - Sugarcubes",
                    linkType:  .youtubeLink(code: "MbjIVA1u_xE")
                ),
                SongLink(
                    id:        "blue-eyed-pop-live",
                    listText:  "Blue Eyed Pop - Sugarcubes (a cracking 1992 live version)",
                    linkType:  .youtubeLink(code: "exmEQj3cUTY")
                ),
            ])
        )
    }
}
