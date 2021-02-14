import Foundation

import Html

// TODO Docs

protocol Page {
    var fileUtils:     FileUtils { get }
    var markdownNames: [String]  { get }

    func dirPath() -> [String]
    func loadMarkdown() -> [String: HtmlNode]

    // Page supplies this to generate page-specific HtmlNode
    // from the markdown
    func pageContent(markdown: [String: HtmlNode]) -> HtmlNode

    // Ditto for page title
    func pageTitle() -> String

    // Implement for any end-of-render extra actions
    // (e.g. copy artwork for songs)
    func writeExtras() -> Void

}
