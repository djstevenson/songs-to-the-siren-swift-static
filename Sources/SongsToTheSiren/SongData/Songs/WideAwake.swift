import Foundation
extension Song {
    static func wideAwake() -> Song {
        Song(
            id:        85,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Deep Sea Diver",
            title:     "Wide Awake",
            album:     "Secrets (2016)",
            released:  "19th February 2016 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1620169240),
            updatedAt: Date(timeIntervalSince1970: 1687060831),
            tags:      [.decade2010s, .seattle, .spouses, .platinum2016],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Wide Awake - Deep Sea Diver",
                    linkType:  .youtubeVideo(code: "JIP1Jpi4Sxs")
                ),
                SongLink(
                    id:        "talkhouse-article",
                    embedText: "article she wrote",
                    listText:  "I Fell In Love With the Drummer - TalkHouse article by Jessica Dobson",
                    linkType:  .other(url: URL(string: "https://www.talkhouse.com/i-fell-in-love-with-the-drummer/")!)
                ),
                SongLink(
                    id:        "impossible-weight",
                    embedText: "title track",
                    listText:  "Impossible Weight - Deep Sea Diver ft. Sharon van Etten",
                    linkType:  .youtubeLink(code: "xzkr2i6Szy8")
                ),
            ])
        )
    }
}

