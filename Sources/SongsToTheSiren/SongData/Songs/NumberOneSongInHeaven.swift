import Foundation
extension Song {

    static func numberOneSongInHeaven() -> Song {
        Song(
            id:        8,
            style:     .listing,
            dir:       String.folderFromFunctionName(name: #function),
            artist:    "Sparks",
            title:     "Number One Song in Heaven",
            album:     "No. 1 in Heaven (1979)",
            released:  "23rd March 1979 (single), ? March 1979 (LP)",
            maxRez:    4,
            createdAt: Date(timeIntervalSince1970: 1587134743),
            updatedAt: Date(timeIntervalSince1970: 1615142851),
            tags:      [.disco, .giorgioMoroder, .brothers, .decade1970s, .longSongs],
            country:   [.usa],
            links:     SongLinks(links: [
                SongLink(
                    id:        "default",
                    listText:  "The Number One Song in Heaven (part 2) - Sparks (official video)",
                    linkType:  .youtubeVideo(code: "P6I6yr7WDeg")
                ),
                SongLink(
                    id:        "number-one-song-in-heaven-full-audio",
                    embedText: "full audio",
                    listText:  "The Number One Song in Heaven 12” - Sparks (audio of the full 12” version)",
                    linkType:  .youtubeLink(code: "jE4EarLZPYs")
                ),
                SongLink(
                    id:        "segued",
                    embedText: "seguéd",
                    listText:  "The Number One Song In Heaven (part 1) / Never Turn Your Back on Mother Earth (live) - Sparks",
                    linkType:  .youtubeLink(code: "sm4CkJYdQv0")
                )
            ])
        )

    }
}
