import Foundation
import ArgumentParser

struct SongsToTheSiren: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "Generate static SongsToTheSiren.com content"
    )

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

        let songMap  = songList.makeSongMap()

        for song in songList.songs {
            SongPage(fileUtils: fileUtils, song: song, songMap: songMap).generate()
        }

        HomePage(fileUtils: fileUtils, songList: songList).generate()

        // RSS page
    }
}

SongsToTheSiren.main()
