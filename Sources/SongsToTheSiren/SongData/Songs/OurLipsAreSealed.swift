import Foundation
extension Song {
    static func ourLipsAreSealed() -> Song {
        Song (
            id:        65,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Go-Go's",
            title:     "Our Lips Are Sealed",
            album:     "Beauty and the Beat (1981)",
            released:  "12th June 1981 (single), 8th July 1981 (LP)",
            maxRez:    3,
            createdAt: Date(timeIntervalSince1970: 1595294398),
            updatedAt: Date(timeIntervalSince1970: 1615138761),
            tags:      [.decade1980s, .terryHall],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Our Lips Are Sealed",
                    listText:  "Our Lips Are Sealed - The Go-Go’s",
                    linkType:  .youtubeVideo(code: "r3kQlzOi27M")
                ),
                SongLink(
                    id:        "fb3",
                    embedText: "Fun Boy Three",
                    listText:  "Our Lips Are Sealed - Fun Boy Three",
                    linkType:  .youtubeLink(code: "QhVhK-VVeXo")
                ),
                SongLink(
                    id:        "hilary-duff",
                    embedText: "Hilary Duff",
                    listText:  "Our Lips Are Sealed - Hilary Duff  (trust me, do not play this)",
                    linkType:  .youtubeLink(code: "mMyenn8rJdo")
                )
            ])
        )
    }
}
