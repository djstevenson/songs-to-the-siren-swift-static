import Foundation

import Html

// TODO Docs

protocol Page {
    var fileUtils:     FileUtils { get }
    var dirPath:       [String]  { get }
    var markdownNames: [String]  { get }

    func loadMarkdown() -> [String: HtmlNode]

}
