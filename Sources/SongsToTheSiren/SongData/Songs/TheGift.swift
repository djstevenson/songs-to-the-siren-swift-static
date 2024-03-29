import Foundation
extension Song {

    static func theGift() -> Song {
        Song(
            id:        40,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Velvet Underground",
            title:     "The Gift",
            album:     "White Light/White Heat",
            released:  "30th January 1968",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1589506150),
            updatedAt: Date(timeIntervalSince1970: 1615142851+40),
            tags:      [.decade1960s, .longSongs, .spokenWord],
            country:   [.usa, .wales],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "The Gift",
                    listText:  "The Gift - The Velvet Underground",
                    linkType:  .youtubeVideo(code: "mI-YiaWDgB4")
                ),
            ])
        )
    }
}
