import Foundation
extension Song {

    static func theKingOfRome() -> Song {
        Song(
            id:        38,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Unthanks",
            title:     "The King of Rome",
            album:     "Diversions, Vol. 2: The Unthanks with Brighouse and Rastrick Brass Band",
            released:  "30 July 2012",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1589154644),
            updatedAt: Date(timeIntervalSince1970: 1615142851+38),
            tags:      [.decade1980s, .decade1990s, .brass, .folk],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "The King of Rome - The Unthanks (live at the BBC Radio 2 Folk Awards 2012)",
                    linkType:  .youtubeVideo(code: "ogXQm70S24M")
                ),
                SongLink(
                    id:        "the-floral-dance",
                    embedText: "The Floral Dance",
                    listText:  "The Floral Dance - Terry Wogan with the Brighouse and Rastrick Brass Band",
                    linkType:  .youtubeLink(code: "T3Y4HufJ1oE")
                ),
                SongLink(
                    id:        "tabor",
                    listText:  "The King of Rome - June Tabor",
                    linkType:  .youtubeLink(code: "kgpWtmUEiZE")
                ),
                SongLink(
                    id:        "sudbury",
                    listText:  "The King of Rome - Dave Sudbury (original version)",
                    linkType:  .youtubeLink(code: "y97SXJR8cVo")
                ),
                SongLink(
                    id:        "the-king-of-rome",
                    embedText: "still exists",
                    listText:  "The King of Rome (the actual pigeon)",
                    linkType:  .other(url: URL(string: "http://www.derbyphotos.co.uk/features/kingofrome/")!)
                ),
            ])
        )
    }
}
