import Foundation
extension Song {
    static func nothingLastsForever() -> Song {
        Song(
            id:        63,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Echo & the Bunnymen",
            title:     "Nothing Lasts Forever",
            album:     "Evergreen (1997)",
            released:  "20th June 1997 (Single), 14th July 1997 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1594523302),
            updatedAt: Date(timeIntervalSince1970: 1687060831),
            tags:      [.decade1990s, .comeback, .liverpool],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Nothing Lasts Forever (wrong aspect ratio, better audio quality) - Echo & The Bunnymen",
                    linkType:  .youtubeVideo(code: "XZF8tVtf-h4")
                ),
                SongLink(
                    id:        "yt-aspect",
                    embedText: "Nothing Lasts Forever",
                    listText:  "Nothing Lasts Forever (official, correct aspect ratio, terrible audio) - Echo & The Bunnymen",
                    linkType:  .youtubeLink(code: "Tc1J7y4xIdA")
                ),
                SongLink(
                    id:        "tiny-feet",
                    embedText: "Tiny Feet",
                    listText:  "Tiny Feet - The Heart Throbs",
                    linkType:  .song(song: "TinyFeet")
                ),
                SongLink(
                    id:        "pointless",
                    embedText: "an episode",
                    listText:  "Pointless question about “... and the ...” bands",
                    linkType:  .youtubeLink(code: "zZlfRIw7hl8", offset: 1932)
                ),
            ])
        )
    }
}
