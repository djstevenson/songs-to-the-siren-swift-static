extension Song {
    static func weCanWorkItOut() -> Song {
        Song(
            id:       14,
            style:    .listing,
            dir:      String.folderFromFunctionName(name: #function),
            artist:   "The Beatles",
            title:    "We Can Work It Out",
            album:    "We Can Work It Out / Day Tripper (Double A Side single)",
            released: "3rd December 1965",
            maxRez:   4,
            tags:     [.timeSignatureChange, .decade1960s, .liverpool],
            country:  [.uk],
            links: [
                .youtubeVideo(
                    embedded: ["default": "We Can Work It Out"],
                    listing:  "We Can Work It Out - The Beatles",
                    code:     "Qyclqo_AV2M"
                ),

            ]
       )

    }
}
