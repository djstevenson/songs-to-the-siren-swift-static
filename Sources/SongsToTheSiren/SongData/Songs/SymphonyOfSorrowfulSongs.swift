import Foundation
extension Song {

    static func symphonyOfSorrowfulSongs() -> Song {
        Song (
            id:        37,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "David Zinman, Dawn Upshaw & London Sinfionetta",
            title:     "Symphony of Sorrowful Songs",
            album:     "Górecki: Symphony Number 3",
            released:  "1992",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1589150464),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.decade1970s, .decade1990s, .classical, .longSongs],
            country:   [.poland],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "2nd Movement, Lento e largo - Tranquillissimo (Upshaw version)",
                    linkType:  .youtubeVideo(code: "5CMCwRnqiI8")
                ),
                SongLink(
                    id:        "movement1",
                    embedText: "1st Movement",
                    listText:  "1st Movement, Lento - Sostenuto tranquillo ma cantabile (Upshaw version)",
                    linkType:  .youtubeLink(code: "u8dWoxcpCpg")
                ),
                SongLink(
                    id:        "movement3",
                    embedText: "3rd Movement",
                    listText:  "3rd Movement, Lento - Cantablile semplice (Upshaw version)",
                    linkType:  .youtubeLink(code: "u7vQ6ztojNQ")
                ),
                SongLink(
                    id:        "gibbons",
                    listText:  "Beth Gibbons performing the 3rd Movement",
                    linkType:  .youtubeLink(code: "-YlGYxCSDJU")
                ),
                SongLink(
                    id:        "portishead",
                    embedText: "Portishead",
                    linkType:  .song(song: "GloryBox")  // TODO Enum instead of string?
                ),
                SongLink(
                    id:        "gerrard",
                    listText:  "Symphony No 3, Górecki ft Lisa Gerrard (Bad recording)",
                    linkType:  .youtubeLink(code: "bC_2P48kGIU")
                ),
                SongLink(
                    id:        "wiki",
                    listText:  "About Górecki’s Symphony of Sorrowful Songs (Wikipedia)",
                    linkType:  .wikipedia(page: "Symphony_No._3_%28G%C3%B3recki%29")
                )
            ])
        )
    }
}
