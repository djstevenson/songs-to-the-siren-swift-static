import Foundation

extension Page {
    
    // TODO ? Probably extract the URL stuff into a separate utility struct
    func inDir() -> URL {
        return makeUrl(direction: "in")
    }

    func dirUrl(direction: String) -> URL {
        return baseUrl
            .appendingPathComponent("\(direction)put", isDirectory: true)
    }
    
    func outDir(relativeTo: String) -> URL {
        return dirUrl(direction: "out")
            .appendingPathComponent(relativeTo, isDirectory: true)
    }
    
    private func makeUrl(direction: String) -> URL {
        return dirUrl(direction: direction)
            .appendingPathComponent(partialUrl, isDirectory: true)
    }
}
