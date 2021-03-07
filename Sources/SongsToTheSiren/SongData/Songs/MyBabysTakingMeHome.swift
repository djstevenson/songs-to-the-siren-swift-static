import Foundation
extension Song {
    static func myBabysTakingMeHome() -> Song {
        Song (
            id:        58,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Sparks",
            title:     "My Baby’s Taking Me Home",
            album:     "Lil’ Beethoven",
            released:  "14th October 2002",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1592520501),
            updatedAt: Date(timeIntervalSince1970: 1615142851+58),
            tags:      [.decade2000s, .reinvention],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "My Baby’s Taking Me Home (Live)",
                    listText:  "My Baby’s Taking Me Home (live) - Sparks",
                    linkType:  .youtubeVideo(code: "QrHa5-R6J7I", offset: 22)
                ),
                SongLink(
                    id:        "official",
                    embedText: "studio recording",
                    listText:  "My Baby’s Taking Me Home (LP version) - Sparks",
                    linkType:  .youtubeLink(code: "OAez4VsSQXs")
                ),
                SongLink(
                    id:        "no1-song",
                    embedText: "No. 1 in Heaven",
                    listText:  "The Number One Song in Heaven - Sparks",
                    linkType:  .song(song: "NumberOneSongInHeaven")
                ),
                SongLink(
                    id:        "gratuitous",
                    embedText: "Gratuitous Sax & Senseless Violins",
                    listText:  "Gratuitous Sax & Senseless Violins - Sparks",
                    linkType:  .wikipedia(page: "Gratuitous_Sax_%26_Senseless_Violins")
                )
            ])
        )
    }
}
