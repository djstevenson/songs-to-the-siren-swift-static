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

        // Icons and artwork
        fileUtils.copyDirectory(dirs: ["icons"])
        fileUtils.copyDirectory(dirs: ["artwork"])

        AboutPage(fileUtils: fileUtils).generate()

        let songList = SongList()

        // HOME PAGE
        HomePage(fileUtils: fileUtils, songList: songList).generate()

        // SONG PAGES
        let songMap  = songList.makeSongMap()

        for song in songList.songs {
            SongPage(fileUtils: fileUtils, song: song, songMap: songMap).generate()
        }

        // TAG PAGES
        let tagMap  = songList.makeTagMap()

        tagMap.songsByTag.forEach { (tag, songs) in
            TagPage(fileUtils: fileUtils, tag: tag, songs: songs).generate()
        }

        // COUNTRY PAGES
        let countryMap  = songList.makeCountryMap()

        countryMap.songsByCountry.forEach { (country, songs) in
            CountryPage(fileUtils: fileUtils, country: country, songs: songs).generate()
        }

        // CSS
        processSCSS("songs-to-the-siren")

        // Atom page
        AtomFeed(fileUtils: fileUtils, songList: songList).publish()

    }

    func processSCSS(_ file: String) {
        shell(exec: "/usr/local/bin/scss", args: "input/songs-to-the-siren.scss:output/songs-to-the-siren.css")
    }

    @discardableResult
    func shell(exec: String,  args: String...) -> Int32 {
        let task = Process()
        task.launchPath = exec
        task.arguments = args
        task.launch()
        task.waitUntilExit()
        return task.terminationStatus
    }
}

SongsToTheSiren.main()
