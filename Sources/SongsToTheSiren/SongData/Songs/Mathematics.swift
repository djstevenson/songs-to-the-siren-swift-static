import Foundation
extension Song {

    static func mathematics() -> Song {
        Song (
            id:        18,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Cherry Ghost",
            title:     "Mathematics",
            album:     "Thirst for Romance (2007)",
            released:  "9th April 2007 (single), 9th July 2007 (LP)",
            maxRez:    3,
            createdAt: Date(timeIntervalSince1970: 1587659039),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.decade2000s, .manchester, .waltzTime],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Mathematics - Cherry Ghost (official video)",
                    linkType:  .youtubeVideo(code: "gQjPWWBG_Hs")
                ),
                SongLink(
                    id:        "wikipedia",
                    embedText: "describes",
                    listText:  "Mathematics - Cherry Ghost (wikipedia)",
                    linkType:  .wikipedia(page: "Mathematics_(Cherry_Ghost_song)")
                )
            ])
        )
    }
}
