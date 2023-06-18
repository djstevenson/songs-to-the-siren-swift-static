import Foundation
extension Song {
    static func gangsters() -> Song {
        Song(
            id:        64,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Special A.K.A.",
            title:     "Gangsters",
            album:     "-",
            released:  "4th May 1979",
            maxRez:    2,
            createdAt: Date(timeIntervalSince1970: 1595292649),
            updatedAt: Date(timeIntervalSince1970: 1687060831),
            tags:      [.decade1970s, .twoTone, .coventry, .reggae, .ska, .terryHall],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Gangsters - Special AKA",
                    linkType:  .youtubeVideo(code: "lgCZN1rU5co")
                ),
                SongLink(
                    id:        "selecter",
                    embedText: "The Selecter",
                    listText:  "The Selecter - The Selecter",
                    linkType:  .youtubeLink(code: "1-TncPbB5ME")
                ),
                SongLink(
                    id:        "2-tone",
                    embedText: "2 Tone Records",
                    listText:  "2 Tone Records (Wikipedia)",
                    linkType:  .wikipedia(page: "2_Tone_Records")
                ),
                SongLink(
                    id:        "al-capone",
                    embedText: "Al Capone",
                    listText:  "Al Capone - Prince Buster",
                    linkType:  .youtubeLink(code: "DDfvXrMnJu0")
                ),
                SongLink(
                    id:        "the-prince",
                    embedText: "The Prince",
                    listText:  "The Prince - Madness",
                    linkType:  .youtubeLink(code: "USb-56G5wwI")
                ),
                SongLink(
                    id:        "on-my-radio",
                    embedText: "On My Radio",
                    listText:  "On My Radio - The Selecter",
                    linkType:  .youtubeLink(code: "074AfC9tw48")
                ),
            ])
        )
    }
}
