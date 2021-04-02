import Foundation
extension Song {

    static func iTrawlTheMEGAHERTZ() -> Song {
        Song(
            id:        41,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Paddy McAloon",
            title:     "I Trawl The MEGAHERTZ",
            album:     "I Trawl The MEGAHERTZ",
            released:  "27th May 2003 (Paddy McAloon), February 2019 (re-release as Prefab Sprout)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1589506151),
            updatedAt: Date(timeIntervalSince1970: 1617324769),
            tags:      [.decade2000s, .decade2010s, .longSongs, .sideProject, .spokenWord],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "I Trawl the MEGAHERTZ - Paddy McAloon (remastered, as Prefab Sprout)",
                    linkType:  .youtubeVideo(code: "J-P7yVqJ9Wk")
                ),
                SongLink(
                    id:        "newsnight",
                    listText:  "Newsnight McAloon interview at the re-release of I Trawl The MEGAHERTZ",
                    linkType:  .youtubeLink(code: "cjSK6bGY2WE")
                ),
            ])
        )
    }
}
