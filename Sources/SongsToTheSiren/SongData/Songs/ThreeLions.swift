import Foundation
extension Song {
    static func threeLions() -> Song {
        Song(
            id:        88,
            style:     .fullPanel,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Baddiel, Skinner & Lightning Seeds",
            title:     "Three Lions",
            album:     "Single",
            released:  "20th May 1996",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1626006413),
            updatedAt: Date(timeIntervalSince1970: 1626006413),
            tags:      [.decade1990s, .collaboration, .football],
            country:   [.uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Three Lions (official video) - Baddiel, Skinner & Lightning Seeds",
                    linkType:  .youtubeVideo(code: "RJqimlFcJsM")
                ),
                SongLink(
                    id:        "world-in-motion",
                    embedText: "World In Motion",
                    listText:  "World In Motion - ENGLANDneworder",
                    linkType:  .youtubeLink(code: "Re4aDJL3heA")
                ),
                SongLink(
                    id:        "world-cup-willie",
                    embedText: "World Cup Willie",
                    listText:  "World Cup Willie - Lonnie Donegan",
                    linkType:  .youtubeLink(code: "mzaMjM4Ra7o")
                ),
                SongLink(
                    id:        "back-home",
                    embedText: "Back Home",
                    listText:  "Back Home - The 1970 England Football Squad",
                    linkType:  .youtubeLink(code: "bNimaPSkpPY")
                ),
                SongLink(
                    id:        "this-time",
                    embedText: "This Time (We’ll Get it Right)",
                    listText:  "This Time (We’ll Get it Right) - England 1982 World Cup Squad",
                    linkType:  .youtubeLink(code: "mg9zrIWHPXE")
                ),
                SongLink(
                    id:        "whole-world",
                    embedText: "We’ve Got the Whole World at our Feet",
                    listText:  "We’ve Got the Whole World at our Feet - England World Cup Squad 1986",
                    linkType:  .youtubeLink(code: "emMosrLEqSk")
                ),
                SongLink(
                    id:        "all-the-way",
                    embedText: "All The Way",
                    listText:  "All The Way - England Euro 1988 Squad",
                    linkType:  .youtubeLink(code: "OVXgPH0XiaE")
                )
            ])
        )
    }
}

