struct SongList {
    struct SongMap {
        let next: Dictionary<Int, Song>
        let prev: Dictionary<Int, Song>
    }

    struct TagMap {
        let songsByTag: Dictionary<Song.Tag, [Song]>
    }

    struct CountryMap {
        let songsByCountry: Dictionary<Song.Country, [Song]>
    }

    let songs: [Song] = [
        Song.iNeedSomeFineWineAndYouYouNeedToBeNicer(),
        Song.fish(),
        Song.weCanWorkItOut(),
        Song.gloryBox(),
        Song.silentNight(),
        Song.deceptacon(),
        Song.justLikeHeaven(),
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

    func makeTagMap() -> TagMap {
        var taggedSongs = Dictionary<Song.Tag, [Song]>()

        for song in songs {
            for tag in song.tags {
                if taggedSongs[tag] == nil {
                    taggedSongs[tag] = [Song]()
                }
                taggedSongs[tag]!.append(song)
            }
        }

        return TagMap(songsByTag: taggedSongs)
    }

    func makeCountryMap() -> CountryMap {
        var countrySongs = Dictionary<Song.Country, [Song]>()

        for song in songs {
            for country in song.country {
                if countrySongs[country] == nil {
                    countrySongs[country] = [Song]()
                }
                countrySongs[country]!.append(song)
            }
        }

        return CountryMap(songsByCountry: countrySongs)
    }
}
