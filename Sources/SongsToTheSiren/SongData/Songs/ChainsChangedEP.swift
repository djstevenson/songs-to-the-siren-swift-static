import Foundation
extension Song {
    static func chainsChangedEP() -> Song {
        Song(
            id:        59,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Throwing Muses",
            title:     "Chains Changed EP",
            album:     "Chains Changed EP (January 1987)",
            released:  "January 1987",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1592956924),
            updatedAt: Date(timeIntervalSince1970: 1687060831),
            tags:      [.decade1980s, .fourAD, .ep, .kristinHersh],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Finished (Chains Changed EP) - Throwing Muses",
                    linkType:  .youtubeVideo(code: "bWtR3LTvvfE")
                ),
                SongLink(
                    id:        "untitled",
                    listText:  "Throwing Muses (\"untitled\" 1986 début album)",
                    linkType:  .wikipedia(page: "Throwing_Muses_(1986_album)")
                ),
                SongLink(
                    id:        "fish",
                    embedText: "Fish",
                    listText:  "Fish - Throwing Muses track on the Lonely is an Eyesore 4AD Compilation",
                    linkType:  .song(song: "Fish")
                ),
                SongLink(
                    id:        "the-fat-skier",
                    embedText: "The Fat Skier mini-LP",
                    listText:  "The Fat Skier (mini LP) - Throwing Muses",
                    linkType:  .wikipedia(page: "The_Fat_Skier")
                ),
                SongLink(
                    id:        "reel",
                    listText:  "Reel (Chains Changed EP) - Throwing Muses",
                    linkType:  .youtubeLink(code: "vFwMpv61HI0")
                ),
                SongLink(
                    id:        "snailhead",
                    listText:  "Snailhead (Chains Changed EP) - Throwing Muses",
                    linkType:  .youtubeLink(code: "p0bFYb18-yo")
                ),
                SongLink(
                    id:        "cry-baby-cry",
                    listText:  "Cry Baby Cry (Chains Changed EP) - Throwing Muses",
                    linkType:  .youtubeLink(code: "aeQkynUMX6A")
                ),
                SongLink(
                    id:        "cry-baby-cry-beatles",
                    listText:  "Cry Baby Cry (Beatles cover) - Throwing Muses",
                    linkType:  .youtubeLink(code: "cZxoEwqmcCk")
                ),
            ])
        )
    }
}
