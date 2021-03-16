import Foundation
extension Song {

    static func tinyFeet() -> Song {
        Song(
            id:        5,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "The Heart Throbs",
            title:     "Tiny Feet",
            album:     "Jubilee Twist (1992)",
            released:  "23rd June 1992",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1586972109),
            updatedAt: Date(timeIntervalSince1970: 1615142851+5),
            tags:      [.indie, .decade1990s, .openingTrack, .oneLittleIndian],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Tiny Feet - The Heart Throbs (YouTube Audio)",
                    linkType:  .youtubeVideo(code: "HE115eeeJLg")
                ),
                SongLink(
                    id:        "reprise",
                    embedText: "an Angelfish side-project",
                    listText:  "Tiny Feet (Reprise) - The Heart Throbs (YouTube Audio)",
                    linkType:  .youtubeLink(code: "WIFVffd4SMs")
                ),
                SongLink(
                    id:        "cleopatra-grip",
                    embedText: "Cleopatra Grip",
                    listText:  "Cleopatra Grip (first LP) - The Heart Throbs (YouTube audio)",
                    linkType:  .youtubeLink(code: "76_T4nRdLqc&list=PLhGLkBjndhcVoZH5uTEhaQh-FYp-9p3sk")
                ),
                SongLink(
                    id:        "jubilee-twist",
                    embedText: "Jubilee Twist",
                    listText:  "Jubilee Twist (second LP) - The Heart Throbs (YouTube audio)",
                    linkType:  .youtubeLink(code: "8lqapAybdLY&list=OLAK5uy_nwv7BhKLOEg0W6ulRBfNaGu_sanr3tLHk")
                ),
                SongLink(
                    id:        "hooligan",
                    embedText: "Hooligan",
                    listText:  "Hooligan - The Heart Throbs (YouTube audio)",
                    linkType:  .youtubeLink(code: "jAxQpILzx3w")
                ),
                SongLink(
                    id:        "bright-green-day",
                    embedText: "Bright Green Day",
                    listText:  "Bright Green Day - The Heart Throbs (YouTube audio)",
                    linkType:  .youtubeLink(code: "gBvA2XeGOYM")
                ),
                SongLink(
                    id:        "tossed-away",
                    embedText: "Tossed Away",
                    listText:  "Tossed Away - The Heart Throbs (YouTube audio)",
                    linkType:  .youtubeLink(code: "76_T4nRdLqc")
                ),
            ])
        )

    }
}
