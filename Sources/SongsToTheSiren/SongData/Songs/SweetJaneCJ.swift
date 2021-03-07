import Foundation
extension Song {
    static func sweetJaneCJ() -> Song {
        Song (
            id:        69,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Cowboy Junkies",
            title:     "Sweet Jane",
            album:     "The Trinity Session",
            released:  "15th November 1988",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1597531270),
            updatedAt: Date(timeIntervalSince1970: 1615142851+69),
            tags:      [.decade1980s, .cover],
            country:   [.canada],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Sweet Jane",
                    listText:  "Sweet Jane - Cowboy Junkies",
                    linkType:  .youtubeVideo(code: "Fa9nN3G2CSg")
                ),
                SongLink(
                    id:        "original",
                    embedText: "original",
                    listText:  "Sweet Jane (original version from Loaded) - The Velvet Underground",
                    linkType:  .youtubeLink(code: "nkumhBVPGdg")
                ),
                SongLink(
                    id:        "1969-version",
                    embedText: "version",
                    listText:  "Sweet Jane (live 1969) - The Velvet Underground",
                    linkType:  .youtubeLink(code: "sXE5e25oxiQ")
                ),
                SongLink(
                    id:        "lou-reed",
                    listText:  "Sweet Jane (live) - Lou Reed",
                    linkType:  .song(song: "SweetJaneLR")
                )
            ])
        )
    }
}
