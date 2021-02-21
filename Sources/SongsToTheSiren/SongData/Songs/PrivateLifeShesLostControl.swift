extension Song {
    static func privateLifeShesLostControl() -> Song {
        Song (
            id:       25,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Grace Jones",
            title:    "Private Life / She's Lost Control",
            album:    "Warm Leatherette (1980)",
            released: "? 1980 (Single), 9th May 1980 (LP)",
            maxRez:   4,
            tags:     [ .decade1980s, .twoForOne, .cover, .dub, .jamaican, .longSongs, .reggae, .slyRobbie ],
            country:  [.jamaica],
            links:    SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Private Life - Grace Jones",
                    linkType:  .youtubeVideo(code: "yvLn_qC7QAs")
                ),
                SongLink(
                    id:        "shes-lost-control",
                    embedText: "She’s Lost Control",
                    listText:  "She's Lost Control - Grace Jones",
                    linkType:  .youtubeVideo(code: "N64I_7HibVE")
                ),
                SongLink(
                    id:        "pretenders",
                    embedText: "Private Left",
                    listText:  "Private Life - The Pretenders",
                    linkType:  .youtubeLink(code: "C4oe7tdXo-g")
                ),
                SongLink(
                    id:        "joy-division-shes-lost-control",
                    embedText: "She's Lost Control",
                    listText:  "She's Lost Control - Joy Division",
                    linkType:  .youtubeLink(code: "UBAO9WcdrOM")
                ),
                SongLink(
                    id:        "don-letts-documentary",
                    listText:  "Where Punk Met Reggae - a short Don Letts documentary",
                    linkType:  .youtubeLink(code: "BLgikuZ9XbQ")
                ),
                SongLink(
                    id:        "don-letts",
                    embedText: "Don Letts",
                    listText:  "Don Letts (wikipedia)",
                    linkType:  .wikipedia(page: "Don_Letts")
                ),
                SongLink(
                    id:        "slf",
                    embedText: "Stiff Little Fingers",
                    listText:  "Punk/reggae: Mr Fire Coal Man - Stiff Little Fingers",
                    linkType:  .youtubeLink(code: "X_03zMFBe0s")
                ),
                SongLink(
                    id:        "the-ruts",
                    embedText: "The Ruts",
                    listText:  "Punk/reggae: Jah War - The Ruts",
                    linkType:  .youtubeLink(code: "4z_7oEG4Gvg")
                ),
                SongLink(
                    id:        "the-clash",
                    embedText: "The Clash",
                    listText:  "Punk/reggae: Armagideon Time - The Clash",
                    linkType:  .youtubeLink(code: "6enAv2SEA38")
                ),
                SongLink(
                    id:        "sly-and-robbie",
                    embedText: "Sly & Robbie",
                    listText:  "Sly & Robbie (Wikipedia)",
                    linkType:  .wikipedia(page: "Sly_and_Robbie")
                )
            ])
        )
    }
}
