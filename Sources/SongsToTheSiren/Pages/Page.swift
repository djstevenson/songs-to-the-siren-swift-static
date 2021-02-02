import Foundation

import Html

// TODO Docs

protocol Page {
    var baseUrl:       URL      { get }
    var partialUrl:    String   { get }
    var markdownNames: [String] { get }
    
    func loadMarkdown() -> [String: HtmlNode]
    
    func generate() -> Void
    
    func inDir() -> URL

    func outDir(relativeTo: String) -> URL
}
