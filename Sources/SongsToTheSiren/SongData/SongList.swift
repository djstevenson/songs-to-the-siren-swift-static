struct SongList {
    struct SongMap {
        var older: Song?
        var newer: Song?
    }

    struct TagMap {
        let songsByTag: [Song.Tag: [Song]]
    }

    struct CountryMap {
        let songsByCountry: [Song.Country: [Song]]
    }

    let songs: [Song] = [
        .noCurse(),
//        .threeLions(),
        .howNotToDrown(),
        .likeIUsedTo(),
        .wideAwake(),
        .pacer(),
        .openUp(),
        .bathWhiteEP(),
        .timeIsHardcore(),
        .idoru(),
        .happinessIsAWarmGun(),
        .safariEP(),
        .areFriendsElectric(),
        .outsideTheTrainsDontRunOnTime(),
        .meAndMagdalena(),
        .rideOnTime(),
        .spitfire(),
        .pumpUpTheVolume(),
        .hotDoggie(),
        .ablaze(),
        .sweetJaneCJ(),
        .sweetJaneLR(),
        .runningFromTheThoughts(),
        .sense(),
        .ourLipsAreSealed(),
        .gangsters(),
        .nothingLastsForever(),
        .lieDreamOfACasinoSoul(),
        .buyNothingDay(),
        .limeHabit(),
        .chainsChangedEP(),
        .myBabysTakingMeHome(),
        .karen(),
        .paperThin(),
        .weekender(),
        .paranoidAndroid(),
        .jesusOfSuburbia(),
        .whiteLove(),
        .messagePersonnel(),
        .dirge(),
        .filmBurn(),
        .gumballMachineWeekend(),
        .saltSpring(),
        .lovelyAllen(),
        .olympians(),
        .queenOfHearts(),
        .eBowTheLetter(),
        .iTrawlTheMEGAHERTZ(),
        .theGift(),
        .nautilus(),
        .theKingOfRome(),
        .symphonyOfSorrowfulSongs(),
        .amser(),
        .laValseAMilleTemps(),
        .birthday(),
        .farFarAway(),
        .heartOfGlass(),
        .goldenBrown(),
        .allMappedOut(),
        .interstate5(),
        .thruTheGlass(),
        .nightNurse(),
        .throwDownYourArms(),
        .privateLifeShesLostControl(),
        .keepMe(),
        .everythingIsTheSame(),
        .torn(),
        .flowersOfRomance(),
        .itsOn(),
        .somethingGood08(),
        .mathematics(),
        .wisheryUpular(),
        .iNeedSomeFineWineAndYouYouNeedToBeNicer(),
        .fish(),
        .weCanWorkItOut(),
        .gloryBox(),
        .silentNight(),
        .deceptacon(),
        .justLikeHeaven(),
        .imNotInLove(),
        .numberOneSongInHeaven(),
        .planetOfSound(),
        .clearestBlue(),
        .tinyFeet(),
        .lostInThePlot(),
        .intoU(),
        .supervixen(),
        .songToTheSiren(),
    ]

    func makeSongMap() -> [String: SongMap] {
        var songMap = [String: SongMap]()

        var lastSong: Song?
        for song in songs {
            songMap[song.dir] = SongMap()
            if let last = lastSong {
                songMap[last.dir]!.older = song
                songMap[song.dir]!.newer = last
            }
            lastSong = song
        }

        return songMap
    }

    func makeTagMap() -> TagMap {
        var taggedSongs = [Song.Tag: [Song]]()

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
        var countrySongs = [Song.Country: [Song]]()

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
