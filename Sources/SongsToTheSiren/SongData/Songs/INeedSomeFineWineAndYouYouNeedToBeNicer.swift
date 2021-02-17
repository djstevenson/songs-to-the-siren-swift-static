import Foundation

extension Song {
    static func iNeedSomeFineWineAndYouYouNeedToBeNicer() -> Song {
        Song(
            id:       16,
            style:    .fullPanel,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "The Cardigans",
            title:    "I Need Some Fine Wine and You, You Need to Be Nicer",
            album:    "Super Extra Gravity (2005)",
            released: "21st September 2005 (single), 17th October 2005 (LP)",
            maxRez:   4,
            tags:     [.decade2000s, .dogsInVideo],
            country:  [.sweden],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:     "fine-wine",
                                desc:   "I Need Some Fine Wine and You, You Need to Be Nicer - The Cardigans"
                            ),
                            code:   "huobAY7gl30"
                      ),
            links: [
                .youtube(
                    listing:  "Mini-documentary about the recording of this song",
                    code:     "O-3-46RD2W8"
                )
            ]
       )

    }
}
