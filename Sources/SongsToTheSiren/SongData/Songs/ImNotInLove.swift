import Foundation
extension Song {

    static func imNotInLove() -> Song {
        Song(
            id:        9,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "10cc",
            title:     "I’m Not in Love",
            album:     "The Original Soundtrack (1975)",
            released:  "May 1975 (single), 11th March 1975 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587166692),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.tapeLoops, .bassSolo, .decade1970s],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "I’m Not In Love - 10cc",
                    linkType:  .youtubeVideo(code: "STugQ0X1NoI")
                ),
                SongLink(
                    id:        "documentary",
                    embedText: "documentary",
                    listText:  "I’m Not in Love: The Story of 10cc documentary",
                    linkType:  .youtubeLink(code: "MhLW_yYqngY")
                ),
                SongLink(
                    id:        "bass-solo",
                    embedText: "bass line",
                    listText:  "I’m Not In Love (middle 8) - 10cc",
                    linkType:  .youtubeLink(code: "STugQ0X1NoI", offset: 116)
                ),
                SongLink(
                    id:        "bass-solo-cover",
                    embedText: "bass solo cover",
                    listText:  "I’m Not In Love (middle 8) - A cover that emphasises the bass part",
                    linkType:  .youtubeLink(code: "wiRgdCNi5GA", offset: 135)
                )
            ])
        )
    }
}
