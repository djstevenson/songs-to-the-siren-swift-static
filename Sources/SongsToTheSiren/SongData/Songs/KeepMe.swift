import Foundation
extension Song {

    static func keepMe() -> Song {
        Song (
            id:        24,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Pesky",
            title:     "Keep Me",
            album:     "Smells Like Tween Spirit EP (2015)",
            released:  "24th July 2015",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587933660),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.decade2010s, .kids, .openingTrack],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Keep Me - Pesky",
                    linkType:  .youtubeVideo(code: "YY-7waUP_fU")
                ),
                SongLink(
                    id:        "daytime-tv",
                    embedText: "daytime TV",
                    listText:  "Interview on BBC Breakfast",
                    linkType:  .youtubeLink(code: "WvQpi9SSlfM")
                )
            ])
        )
    }
}
