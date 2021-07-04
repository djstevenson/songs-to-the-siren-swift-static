import Foundation
extension Song {
    static func howNotToDrown() -> Song {
        Song(
            id:        87,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Chvrches ft. Robert Smith",
            title:     "How Not To Drown",
            album:     "Screen Violence (due 27th August 2021)",
            released:  "Single (2nd June 2021), LP (due 27th August 2021)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1625358239),
            updatedAt: Date(timeIntervalSince1970: 1625358239),
            tags:      [.decade2020s, .collaboration, .electronic],
            country:   [.uk, .scotland],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "How Not To Drown - Chvrches ft. Robert Smith",
                    linkType:  .youtubeVideo(code: "7U_LhzgwJ4U")
                ),
                SongLink(
                    id:        "remix",
                    embedText: "remix by Robert Smith",
                    listText:  "How Not To Drown (Robert Smith remix) - Chvrches ft. Robert Smith",
                    linkType:  .youtubeLink(code: "QrHtliMsAho")
                ),
                SongLink(
                    id:        "he-said-she-said",
                    embedText: "He Said She Said",
                    listText:  "He Said She Said - Chvrches",
                    linkType:  .youtubeLink(code: "fyyiJc0Wk2M")
                ),
                SongLink(
                    id:        "clearest-blue",
                    embedText: "Clearest Blue",
                    listText:  "Clearest Blue - Chvrches",
                    linkType:  .song(song: "ClearestBlue")
                ),
                SongLink(
                    id:        "like-i-used-to",
                    embedText: "Like I Used To",
                    listText:  "Like I Used To - Sharon Van Etten & Angel Olsen",
                    linkType:  .song(song: "LikeIUsedTo")
                ),
            ])
        )
    }
}

