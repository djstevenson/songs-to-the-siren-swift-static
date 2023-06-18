import Foundation
extension Song {
    static func happinessIsAWarmGun() -> Song {
        Song(
            id:        79,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Beatles",
            title:     "Happiness Is A Warm Gun",
            album:     "The Beatles (aka The White Album)",
            released:  "22nd November 1968 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1615249172),
            updatedAt: Date(timeIntervalSince1970: 1687058738),
            tags:      [.decade1960s, .timeSignatureChange, .liverpool],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Happiness Is A Warm Gun - The Beatles",
                    linkType:  .youtubeVideo(code: "vdvnOH060Qg")
                ),
                SongLink(
                    id:        "breeders",
                    embedText: "The Breeders",
                    listText:  "Happiness Is A Warm Gun - The Breeders",
                    linkType:  .youtubeLink(code: "LoIyUl10ChQ")
                ),
            ])
        )
    }
}
