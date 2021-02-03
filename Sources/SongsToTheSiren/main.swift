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

        HomePage(fileUtils: fileUtils).generate()
        AboutPage(fileUtils: fileUtils).generate()
//
//        SongPages(
//            inputUrl: inputUrl.appendingPathComponent("songs", isDirectory: true),
//            outputUrl: outputUrl.appendingPathComponent("songs", isDirectory: true)
//        ).generate()
    }
}

SongsToTheSiren.main()
