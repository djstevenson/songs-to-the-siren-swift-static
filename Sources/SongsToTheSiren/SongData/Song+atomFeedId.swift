import Foundation

extension Song {
    func atomFeedID() -> String {
        // It's not a hash, it's an ID. But it's good enough
        // for the Atom feed
        return "\(dir)-\(id)"
    }
}
