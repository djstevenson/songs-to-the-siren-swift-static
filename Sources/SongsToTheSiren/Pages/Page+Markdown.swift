import Foundation
import Html
import Down

extension Page {
    // Loads all the markdown files, converting them to swift-html node trees
    // Does not apply shortcut detection, you should apply them when
    // actually required (e.g. when processing a song article)

    func loadMarkdown() -> [String: HtmlNode] {
        return markdownNames.reduce(into: [String: HtmlNode]()) {
            $0[$1] = parseMarkdownFile($1)
        }
    }

    func parseMarkdownFile(_ name: String) -> HtmlNode {
        let md = fileUtils.readFile(dirs: dirPath(), file: "\(name).md")

        let down = Down(markdownString: md)

        let document = try! down.toDocument()
        return document.accept(HtmlVisitor())
    }
}

