import Foundation
extension Song {

    static func lovelyAllen() -> Song {
        Song (
            id:        45,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Holy Fuck",
            title:     "Lovely Allen",
            album:     "LP (2007)",
            released:  "Single (2008), LP (2007)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1590010503),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.decade2000s, .fWord, .instrumental],
            country:   [.canada],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Lovely Allen - Holy Fuck (official video)",
                    linkType:  .youtubeVideo(code: "hrtQEaeGaZY", offset: 20)
                ),
                SongLink(
                    id:        "live",
                    listText:  "Lovely Allen - Holy Fuck (live)",
                    linkType:  .youtubeLink(code: "pfDwMbtBgfU", offset: 19)
                )
//                links to other fuck songs
//                ,
//                SongLink(
//                    id:        "",
//                    embedText: "",
//                    listText:  "Olympians - Fuck Buttons",
//                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/44/view")
//                ),
//                SongLink(
//                    id:        "",
//                    embedText: "",
//                    listText:  "Queen of Hearts - Fucked Up",
//                    linkType:  .youtubeLink(code: "https://songstothesiren.com/song/43/view")
//                )
            ])
        )
    }
}
