import Foundation
extension Song {
    static func paperThin() -> Song {
        Song (
            id:        56,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "She Makes War (feat. Tanya Donelly)",
            title:     "Paper Thin",
            album:     "Direction of Travel",
            released:  "8th April 2016 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1591561917),
            updatedAt: Date(timeIntervalSince1970: 1615142851+56),
            tags:      [.decade2010s, .platinum2016, .bristol, .guestVocals, .ukulele, .collaboration],
            country:   [.uk, .usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    embedText: "Paper Thin",
                    listText:  "Paper Thin - She Makes War (feat. Tanya Donelly)",
                    linkType:  .youtubeVideo(code: "TvKrLam3atI")
                ),
                SongLink(
                    id:        "slow-dog",
                    embedText: "Slow Dog",
                    listText:  "Slow Dog (Belly song) - Tanya Donelly and Laura Kidd",
                    linkType:  .youtubeLink(code: "dpqI34P8EzY", offset: 10)
                ),
                SongLink(
                    id:        "cold-shoulder",
                    embedText: "Cold Shoulder",
                    listText:  "Cold Shoulder - She Makes War",
                    linkType:  .youtubeLink(code: "FWpK90LNu3E")
                ),
                SongLink(
                    id:        "everything",
                    embedText: "Everything Looks Normal in the Sunshine",
                    listText:  "Everything Looks Normal in the Sunshine - Penfriend",
                    linkType:  .youtubeLink(code: "v=g4KZXBYH30g")
                ),
                SongLink(
                    id:        "attention-engineer",
                    embedText: "Attention Engineer podcast",
                    listText:  "Attention Engineer Podcast",
                    linkType:  .other(url: URL(string: "https://penfriend.rocks/podcast/")!)
                )
            ])
        )
    }
}
