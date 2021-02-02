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
        let baseUrl  = URL(fileURLWithPath: FileManager.default.currentDirectoryPath, isDirectory: true)
        let outputUrl = baseUrl.appendingPathComponent("output", isDirectory: false)
        
        // Remove all output before we start.
        try? FileManager.default.removeItem(at: outputUrl)

        HomePage(baseUrl: baseUrl).generate()
        AboutPage(baseUrl: baseUrl).generate()
//
//        SongPages(
//            inputUrl: inputUrl.appendingPathComponent("songs", isDirectory: true),
//            outputUrl: outputUrl.appendingPathComponent("songs", isDirectory: true)
//        ).generate()
    }
}

SongsToTheSiren.main()
