import Foundation

extension Song {
    static func eBowTheLetter() -> Song {
        Song (
            id:       42,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "R.E.M.",
            title:    "E-Bow The Letter",
            album:    "New Adventures in Hi-Fi",
            released: "August 1996 (single), 9th September 1996 (LP)",
            maxRez:   4,
            tags:     [ .decade1990s, .guestVocals, .longSongs ],
            country:  [.usa],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "E-Bow The Letter",
                    linkType:  .youtubeVideo(code: "5cnIQHJ169s")
                ),
                SongLink(
                    id:        "ebow",
                    embedText: "EBow",
                    listText:  "The EBow device",
                    linkType:  .wikipedia(page: "EBow")
                ),
                SongLink(
                    id:        "patti-smith",
                    embedText: "Patti Smith",
                    listText:  "Patti Smith",
                    linkType:  .wikipedia(page: "Patti_Smith")
                ),
                SongLink(
                    id:        "river-phoenix",
                    embedText: "River Phoenix",
                    listText:  "River Phoenix",
                    linkType:  .wikipedia(page: "River_Phoenix")
                ),
                SongLink(
                    id:        "twitter",
                    embedText: "Twitter",
                    linkType:  .other(url: URL(string: "https://twitter.com/")!)  // TODO Use ExpressibleByStringLiteral?
                )
            ])
        )
    }
}
