import Foundation
extension Song {
    static func safariEP() -> Song {
        Song (
            id:        78,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Breeders",
            title:     "Safari EP",
            album:     "Safari EP",
            released:  "6th April 1992",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1615072975),
            updatedAt: Date(timeIntervalSince1970: 1615072975),
            tags:      [.decade1990s, .ep, .indie, .supergroup, .fourAD],
            country:   [.usa, .uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Safari - The Breeders (Safari EP)",
                    linkType:  .youtubeVideo(code: "xT6oZGThwis")
                ),
                SongLink(
                    id:        "do-you-love-me-now",
                    embedText: "Do You Love Me Now?",
                    listText:  "Do You Love Me Now? - The Breeders (Safari EP)",
                    linkType:  .youtubeLink(code: "2Nbl-djoxuk")
                ),
                SongLink(
                    id:        "pod",
                    embedText: "Pod",
                    listText:  "Pod - The Breeders début LP",
                    linkType:  .wikipedia(page: "Pod_(The_Breeders_album)")
                ),
                SongLink(
                    id:        "last-splash",
                    embedText: "Last Splash",
                    listText:  "Last Splash - The Breeders second LP",
                    linkType:  .wikipedia(page: "Last_Splash")
                ),
                SongLink(
                    id:        "dont-call-home",
                    embedText: "Don‘t Call Home",
                    listText:  "Don‘t Call Home  - The Breeders (Safari EP)",
                    linkType:  .youtubeLink(code: "JVNcofCilk0")
                ),
                SongLink(
                    id:        "so-sad-about-us",
                    embedText: "So Sad About Us",
                    listText:  "So Sad About Us  - The Breeders (Safari EP)",
                    linkType:  .youtubeLink(code: "LgEag5DgoYU")
                )
            ])
        )
    }
}
