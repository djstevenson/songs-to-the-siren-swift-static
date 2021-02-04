struct SongList {
    struct SongMap {
        let next: Dictionary<Int, Song>
        let prev: Dictionary<Int, Song>
    }

    let songs: [Song] = [
        Song.imNotInLove(),
        Song.numberOneSongInHeaven(),
        Song.planetOfSound(),
        Song.clearestBlue(),
        Song.tinyFeet(),
        Song.lostInThePlot(),
        Song.intoU(),
        Song.supervixen(),
        Song.songToTheSiren()
    ]

    func makeSongMap() -> SongMap {
        var next = Dictionary<Int, Song>()
        var prev = Dictionary<Int, Song>()

        var lastSong: Song? = nil
        for song in songs {
            if let last = lastSong {
                next[last.id] = song
                prev[song.id] = last
            }
            lastSong = song
        }

        return SongMap(next: next, prev: prev)
    }
}
