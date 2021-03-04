import Foundation

class FileUtils {
    let baseDir: URL

    lazy var outputBase: URL = { baseDir.appendingPathComponent("output", isDirectory: true) }()
    lazy var inputBase:  URL = { baseDir.appendingPathComponent("input",  isDirectory: true) }()

    init() {
        // Default base = current directory
        self.baseDir = URL(fileURLWithPath: FileManager.default.currentDirectoryPath, isDirectory: true)
    }

    // Can override base url for tests
    init(baseDir: URL) {
        self.baseDir = baseDir
    }

    public func clearOutput() -> Void {
        // Remove all files/dirs under output dir
        // Don't remove actual output dir as we have our
        // test web server running in there.
        let fileManager = FileManager.default
        do {
            let fileURLs = try fileManager.contentsOfDirectory(at: outputBase, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)
            for url in fileURLs {
               try fileManager.removeItem(at: url)
            }
        } catch {
            fatalError(error.localizedDescription)
        }
    }

    public func outputDir(dirs: [String]) -> URL {
        let url = outputDirUrl(dirs:dirs)
        try! FileManager.default.createDirectory(at: url, withIntermediateDirectories: true)
        return url
    }

    private func outputDirUrl(dirs: [String]) -> URL {
        var url = outputBase
        for dir in dirs {
            url = url.appendingPathComponent(dir, isDirectory: true)
        }
        return url
    }

    public func outputFile(dirs: [String], file: String) -> URL {
        outputDir(dirs: dirs).appendingPathComponent(file, isDirectory: false)
    }

    public func inputDir(dirs: [String]) -> URL {
        var url = inputBase
        for dir in dirs {
            url = url.appendingPathComponent(dir, isDirectory: true)
        }
        return url
    }

    public func inputFile(dirs: [String], file: String) -> URL {
        inputDir(dirs: dirs).appendingPathComponent(file, isDirectory: false)
    }

    public func writeFile(dirs: [String], file: String, content: String) -> Void {
        let url = outputFile(dirs: dirs, file: file)
        try! content.write(to: url, atomically: true, encoding: .utf8)
    }

    public func writeData(dirs: [String], file: String, data: Data) -> Void {
        let url = outputFile(dirs: dirs, file: file)
        try! data.write(to: url)
    }

    public func readFile(dirs: [String], file: String) -> String {
        let url = inputFile(dirs: dirs, file: file)
        return try! String(contentsOf: url)
    }

    public func copyFile(dirs: [String], file: String) -> Void {
        let inFileUrl  = inputFile(dirs: dirs, file: file)
        let outFileUrl = outputFile(dirs: dirs, file: file)
        try! FileManager.default.copyItem(at: inFileUrl, to: outFileUrl)
    }

    public func copyDirectory(dirs: [String]) -> Void {
        let inputUrl  = inputDir(dirs: dirs)
        let outputUrl = outputDirUrl(dirs: dirs)
        try! FileManager.default.copyItem(at: inputUrl, to: outputUrl)
    }
}
