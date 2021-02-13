import Foundation
import ArgumentParser

struct SongsToTheSiren: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "Generate static SongsToTheSiren.com content"
    )

    // Not yet doing anyting with these options!
    @Option(name: .shortAndLong, help: "The input directory, defaults to ./input")
    var input = "input"

    @Option(name: .shortAndLong, help: "The output directory, defaults to ./output")
    var output = "output"

    @Flag
    var verbose = false

    init() { }

    mutating func run() throws {
        let fileUtils = FileUtils()

        fileUtils.clearOutput()

        let songList = SongList()
        AboutPage(fileUtils: fileUtils).generate()

        // SONG PAGES
        let songMap  = songList.makeSongMap()

        for song in songList.songs {
            SongPage(fileUtils: fileUtils, song: song, songMap: songMap).generate()
        }

        // HOME PAGE
        HomePage(fileUtils: fileUtils, songList: songList).generate()

        // TAG PAGES
        let tagMap  = songList.makeTagMap()

        tagMap.songsByTag.forEach { (tag, songs) in
            TagPage(fileUtils: fileUtils, tag: tag, songs: songs).generate()
        }

        HomePage(fileUtils: fileUtils, songList: songList).generate()

        // RSS page
    }
}

SongsToTheSiren.main()
