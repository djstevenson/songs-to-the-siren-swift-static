import Foundation
import Html
import Down

extension Page {
    // Loads all the markdown files, converting them to swift-html node trees
    // Does not apply shortcut detection, you should apply them when
    // actually required (e.g. when processing a song article)

    func loadMarkdown() -> [String: HtmlNode] {
        markdownNames.reduce(into: [String: HtmlNode]()) {
            $0[$1] = parseMarkdownFile($1)
        }
    }

    func parseMarkdownFile(_ name: String) -> HtmlNode {
        let md = loadFile(name)

        let down = Down(markdownString: md)

        let document = try! down.toDocument()
        return document.accept(HtmlVisitor())
    }

    func loadFile(_ name: String) -> String {
        let file = filename() + "/" + name + ".md"
        return fileUtils.readFile(dirs: dirPath(), file: file)
    }
}

