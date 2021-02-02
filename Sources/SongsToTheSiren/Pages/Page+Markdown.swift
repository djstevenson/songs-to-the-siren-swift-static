import Foundation
import Html

extension Page {
    // Loads all the markdown files, converting them to swift-html node trees
    // Does not apply shortcut detection, you should apply them when
    // actually required (e.g. when processing a song article)
    
    func loadMarkdown() -> [String: HtmlNode] {
        // TODO implement
        return [String: HtmlNode]()
    }
}

