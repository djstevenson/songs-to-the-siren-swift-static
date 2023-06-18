import Foundation
extension Song {

    static func intoU() -> Song {
        Song(
            id:        3,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Richard X ft Jarvis Cocker",
            title:     "Into U",
            album:     "Richard X Presents His X-Factor Vol. 1 (2003)",
            released:  "23rd August 2003",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1586729472),
            updatedAt: Date(timeIntervalSince1970: 1687058738),
            tags:      [.sample, .mashup, .hopeSandoval, .jarvisCocker, .decade2000s],
            country:   [.uk, .usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Into U - Richard X ft Jarvis Cocker",
                    linkType:  .youtubeVideo(code: "T5XUCwxZqm4")
                ),
                SongLink(
                    id:        "fade-into-you",
                    embedText: "Fade Into You",
                    listText:  "Fade Into You - Mazzy Star",
                    linkType:  .youtubeLink(code: "7Z4zCIn7zyY")
                ),
                SongLink(
                    id:        "we-dont-give-a-damn-about-our-friends",
                    embedText: "We Don’t Give a Damn About Our Friends",
                    listText:  "We Don’t Give a Damn About Our Friends - Girls On Top aka Richard X",
                    linkType:  .youtubeLink(code: "RZO_Uqx7njM")
                ),
                // TODO Are Friends Electric link on this site
                SongLink(
                    id:        "are-friends-electric",
                    embedText: "Are ’Friends’ Electric?",
                    listText:  "Are ’Friends’ Electric? - Tubeway Army",
                    linkType:  .youtubeLink(code: "7rKJf_DWecU", offset: 8)
                ),
                SongLink(
                    id:        "freak-like-me",
                    embedText: "Freak Like Me",
                    listText:  "Freak Like Me - Adina Howard",
                    linkType:  .youtubeLink(code: "fdyUqqRfUMk")
                ),
            ])
        )

    }
}
