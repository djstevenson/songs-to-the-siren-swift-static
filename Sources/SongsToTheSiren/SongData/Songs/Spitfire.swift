import Foundation
extension Song {
    static func spitfire() -> Song {
        Song (
            id:        73,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Public Service Broadcasting",
            title:     "Spitfire",
            album:     "Inform - Educate - Entertain",
            released:  "26th March 2012 (single), 6th May 2013 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1602114886),
            updatedAt: Date(timeIntervalSince1970: 1602114886),
            tags:      [.decade2010s, .instrumental, .sample],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "yt",
                    embedText: "Spitfire",
                    listText:  "Spitfire - Public Service Broadcasting",
                    linkType:  .youtubeLink(code: "https://youtu.be/_u4Md_aXVJE")
                ),
                SongLink(
                    id:        "yt-first",
                    embedText: "The First Of The Few",
                    listText:  "The First Of The Few (1942)",
                    linkType:  .youtubeLink(code: "https://youtu.be/Z1vMKe6U_Kk")
                ),
                SongLink(
                    id:        "yt-spitfire",
                    embedText: "Supermarine Spitfire",
                    listText:  "Supermarine Spitfire",
                    linkType:  .youtubeLink(code: "https://en.wikipedia.org/wiki/Supermarine_Spitfire")
                ),
                SongLink(
                    id:        "yt-hurricane",
                    embedText: "Hawker Hurricane",
                    listText:  "Hawker Hurricane",
                    linkType:  .youtubeLink(code: "https://en.wikipedia.org/wiki/Hawker_Hurricane")
                ),
                SongLink(
                    id:        "yt-mitchell",
                    embedText: "R J Mitchell",
                    listText:  "R J Mitchell - designer of the Hurricane",
                    linkType:  .youtubeLink(code: "https://en.wikipedia.org/wiki/R._J._Mitchell")
                )
            ])
        )
    }
}
