import Foundation
extension Song {

    static func songToTheSiren() -> Song {
        Song(
            id:        1,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "This Mortal Coil",
            title:     "Song to the Siren",
            album:     "It’ll End In Tears (4AD, October 1984)",
            released:  "September 1983 (EP) / October 1984 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1586710374),
            updatedAt: Date(timeIntervalSince1970: 1615142851+1),
            tags:      [.fourAD, .cover, .decade1980s, .lizFraser, .husbandWife],
            country:   [.scotland, .uk],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "Song to the Siren - This Mortal Coil (official)",
                    linkType:  .youtubeVideo(code: "HFWKJ2FUiAQ")
                ),
                SongLink(
                    id:        "morning-glory",
                    embedText: "Morning Glory",
                    listText:  "Morning Glory - This Mortal Coil",
                    linkType:  .youtubeLink(code: "01o6AB8MKyg")
                ),
                SongLink(
                    id:        "monkees",
                    embedText: "The Monkees Show",
                    listText:  "Song to the Siren - Tim Buckley, live on “The Monkees”",
                    linkType:  .youtubeLink(code: "vMTEtDBHGY4")
                ),
                SongLink(
                    id:        "starsailor",
                    embedText: "Starsailor LP",
                    listText:  "Song to the Siren - Tim Buckley, studio version on Starsailor (1970)",
                    linkType:  .youtubeLink(code: "cZiTSglLM-4")
                ),
                SongLink(
                    id:        "wolf-alice",
                    embedText: "Wolf Alice",
                    listText:  "Song to the Siren - Wolf Alice",
                    linkType:  .youtubeLink(code: "G5nbn4-iwPY")
                ),
                SongLink(
                    id:        "sinead",
                    embedText: "Sinéad O’Connor",
                    listText:  "Song to the Siren - Sinéad O’Connor",
                    linkType:  .youtubeLink(code: "88wL8oRf45U")
                ),
                SongLink(
                    id:        "hmhb",
                    embedText: "Half Man Half Biscuit",
                    listText:  "Song to the Siren - Half Man Half Biscuit",
                    linkType:  .youtubeLink(code: "jjk2L5BFq1A")
                ),
                SongLink(
                    id:        "george-michael",
                    embedText: "George Michael",
                    listText:  "Song to the Siren - George Michael",
                    linkType:  .youtubeLink(code: "vDIvTCweoCw")
                ),
                SongLink(
                    id:        "robert-plant",
                    embedText: "Robert Plant",
                    listText:  "Song to the Siren - Robert Plant (do not click on this 💩)",
                    linkType:  .youtubeLink(code: "Gw9ANFOuMBU")
                ),
                // TODO Tag link to 4AD songs on this site
                SongLink(
                    id:        "4ad",
                    embedText: "4AD",
                    listText:  "4AD (wikipedia)",
                    linkType:  .wikipedia(page: "4AD")
                )
            ])
        )

    }
}
