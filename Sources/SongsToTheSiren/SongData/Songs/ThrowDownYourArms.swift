import Foundation
extension Song {

    static func throwDownYourArms() -> Song {
        Song (
            id:        26,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Sinéad O’Connor",
            title:     "Throw Down Your Arms",
            album:     "Throw Down Your Arms (2005)",
            released:  "28th September 2005",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1588113403),
            updatedAt: Date(timeIntervalSince1970: 1588113403),
            tags:      [.decade2000s, .cover, .reggae, .slyRobbie],
            country:   [.ireland],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Throw Down Your Arms - Sinéad O’Connor",
                    linkType:  .youtubeVideo(code: "btmqe27GfL8")
                ),
                SongLink(
                    id:        "burning-spear",
                    embedText: "Burning Spear",
                    listText:  "Throw Down Your Arms - Burning Spear",
                    linkType:  .youtubeLink(code: "aZ14bOV4jhE")
                ),
                SongLink(
                    id:        "mandinka",
                    embedText: "Mandinka",
                    listText:  "Mandinka - Sinéad O’Connor",
                    linkType:  .youtubeLink(code: "h08pCvyKfbs")
                ),
                SongLink(
                    id:        "nothing-compares-2-u",
                    embedText: "Nothing Compares 2 U",
                    listText:  "Nothing Compares 2 U - Sinéad O’Connor",
                    linkType:  .youtubeLink(code: "0-EF60neguk")
                ),
                SongLink(
                    id:        "sly-and-robbie",
                    embedText: "Sly & Robbie",
                    listText:  "Sly & Robbie (Wikipedia)",
                    linkType:  .wikipedia(page: "Sly_and_Robbie")
                )
            ])
        )
    }
}
