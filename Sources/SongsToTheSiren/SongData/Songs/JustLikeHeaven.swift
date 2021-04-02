import Foundation
extension Song {

    static func justLikeHeaven() -> Song {
        Song(
            id:        10,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Cure",
            title:     "Just Like Heaven",
            album:     "Kiss Me, Kiss Me, Kiss Me (1987)",
            released:  "5th October 1987 (single), 25th May 1987 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587246144),
            updatedAt: Date(timeIntervalSince1970: 1615142851+10),
            tags:      [.decade1980s, .rickBeato],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Just Like Heaven - The Cure",
                    linkType:  .youtubeVideo(code: "T5XUCwxZqm4")
                ),
                SongLink(
                    id:        "watson-twins",
                    embedText: "The Watson Twins",
                    listText:  "Just Like Heaven - The Watson Twins",
                    linkType:  .youtubeLink(code: "KRcmj_XZGzY")
                ),
                SongLink(
                    id:        "katie-melua",
                    embedText: "Katie Melua",
                    listText:  "Just Like Heaven - Katie Melua",
                    linkType:  .youtubeLink(code: "XV4CZmHcvd0")
                ),
                SongLink(
                    id:        "dinosaur-jr",
                    embedText: "Dinosaur Jr.",
                    listText:  "Just Like Heaven - Dinosaur Jr.",
                    linkType:  .youtubeLink(code: "UT7IpRx08tE")
                ),
                SongLink(
                    id:        "kiss-me",
                    embedText: "Kiss Me, Kiss Me, Kiss Me",
                    listText:  "Kiss Me, Kiss Me, Kiss Me - The Cure",
                    linkType:  .youtubeLink(code: "BNTrm67-g8Q")
                ),
                SongLink(
                    id:        "rick-beato",
                    embedText: "Rick Beato’s analysis of Just Like Heaven in his ’What Makes This Song Great’ series",
                    listText:  "Rick Beato’s analysis of Just Like Heaven in What Makes This Song Great Ep 83",
                    linkType:  .youtubeLink(code: "LPNHwwXh3Ks")
                ),
            ])
        )

    }
}
