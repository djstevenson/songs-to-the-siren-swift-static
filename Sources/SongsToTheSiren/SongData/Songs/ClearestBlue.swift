import Foundation

extension Song {
    static func clearestBlue() -> Song {
        Song(
            id:       6,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "Chvrches",
            title:    "Clearest Blue",
            album:    "Every Open Eye (2015)",
            released: "10th September 2015 (single), 25th September 2015 (album), 2016 (Gryffin remix)",
            maxRez:   4,
            tags:     [.electronic, .decade2010s, .scottish],
            country:  [.uk],
            video:    .youtube(
                            data: SongVideo.Common(
                                id:     "clearest-blue",
                                desc:   "Clearest Blue - Chvrches"
                            ),
                            code:   "BZyzX4c1vIs",
                            offset: 18
                      ),
            links: [
                .youtube(
                    embedded: SongLink.Embed(id: "the-mother-we-share", text: "The Mother We Share"),
                    listing:  SongLink.List(text: "The Mother We Share - Chvrches"),
                    code:     "_mTRvJ9fugM"
                ),
                .other(
                    embedded: SongLink.Embed(id: "bbc-sound-of-2013", text: "BBC Sound of 2013"),
                    listing:  SongLink.List(text: "BBC Sound of 2013"),
                    url:   URL(string: "https://www.bbc.co.uk/events/efxzp6")!
                ),
                .youtube(
                    embedded: SongLink.Embed(id: "gryffin-remix", text: "Gryffin Remix"),
                    listing:  SongLink.List(text: "Clearest Blue (Gryffin Remix) - Chvrches"),
                    code:     "O-3-46RD2W8"
                )
            ]
       )

    }
}
