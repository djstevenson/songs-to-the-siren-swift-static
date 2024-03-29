import Foundation
extension Song {

    static func weCanWorkItOut() -> Song {
        Song(
            id:        14,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Beatles",
            title:     "We Can Work It Out",
            album:     "We Can Work It Out / Day Tripper (Double A Side single)",
            released:  "3rd December 1965",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587418281),
            updatedAt: Date(timeIntervalSince1970: 1615142851+14),
            tags:      [.timeSignatureChange, .decade1960s, .liverpool],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "We Can Work It Out - The Beatles",
                    linkType:  .youtubeVideo(code: "Qyclqo_AV2M")
                ),
            ])
        )

    }
}
