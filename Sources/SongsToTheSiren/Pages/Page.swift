import Foundation

import Html

// TODO Docs

protocol Page {
    var fileUtils:     FileUtils { get }
    var markdownNames: [String]  { get }

    func dirPath() -> [String]
    func filename() -> String
    func loadMarkdown() -> [String: HtmlNode]

    // Page supplies this to generate page-specific HtmlNode
    // from the markdown
    func pageContent(markdown: [String: HtmlNode]) -> HtmlNode

    // Ditto for page title
    func pageTitle() -> String

}
