import Foundation
extension Song {
    static func spitfire() -> Song {
        Song(
            id:        73,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Public Service Broadcasting",
            title:     "Spitfire",
            album:     "Inform - Educate - Entertain",
            released:  "26th March 2012 (single), 6th May 2013 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1602114886),
            updatedAt: Date(timeIntervalSince1970: 1687060831),
            tags:      [.decade2010s, .instrumental, .sample],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Spitfire",
                    listText:  "Spitfire - Public Service Broadcasting",
                    linkType:  .youtubeVideo(code: "_u4Md_aXVJE")
                ),
                SongLink(
                    id:        "first",
                    embedText: "The First Of The Few",
                    listText:  "The First Of The Few (1942)",
                    linkType:  .youtubeLink(code: "4nNjzTJGBeY")
                ),
                SongLink(
                    id:        "spitfire",
                    embedText: "Supermarine Spitfire",
                    listText:  "Supermarine Spitfire",
                    linkType:  .wikipedia(page: "Supermarine_Spitfire")
                ),
                SongLink(
                    id:        "hurricane",
                    embedText: "Hawker Hurricane",
                    listText:  "Hawker Hurricane",
                    linkType:  .wikipedia(page: "Hawker_Hurricane")
                ),
                SongLink(
                    id:        "mitchell",
                    embedText: "R J Mitchell",
                    listText:  "R J Mitchell - designer of the Hurricane",
                    linkType:  .wikipedia(page: "R._J._Mitchell")
                ),
            ])
        )
    }
}
