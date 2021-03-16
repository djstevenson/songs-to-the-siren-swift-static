import Foundation

struct SongLinks {
    private var linksArray: [SongLink]
    private var linksDictionary: [String: SongLink]

    public var count : Int {
        return linksArray.count
    }

    public var isEmpty : Bool {
        return linksArray.isEmpty
    }

    public init(links: [SongLink]) {
        linksArray = links

        linksDictionary = [String: SongLink]()
        links.forEach { link in
            linksDictionary[link.id] = link
        }
    }

    public func find(id: String) -> SongLink? {
        return linksDictionary[id]
    }

    public func map<T>(_ transform: (SongLink) throws -> T) rethrows -> [T] {
        return try linksArray.map(transform)
    }

    public func forEach(_ run: (SongLink) -> Void) {
        return linksArray.forEach(run)
    }
}
