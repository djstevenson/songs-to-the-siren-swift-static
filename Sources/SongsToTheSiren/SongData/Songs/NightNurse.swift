import Foundation
extension Song {

    static func nightNurse() -> Song {
        Song (
            id:        27,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Gregory Isaacs",
            title:     "Night Nurse",
            album:     "Night Nurse (1982)",
            released:  "1982",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1588113404),
            updatedAt: Date(timeIntervalSince1970: 1615142851+27),
            tags:      [.decade1980s, .reggae],
            country:   [.jamaica],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Night Nurse - Gregory Isaacs",
                    linkType:  .youtubeVideo(code: "K6oYyG0KcvQ")
                ),
                SongLink(
                    id:        "simply-red",
                    embedText: "Simply Red",
                    listText:  "Night Nurse - Simply Red",
                    linkType:  .youtubeLink(code: "L68nlTMVExw")
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
