import Foundation

struct AboutPage: Page {
    let fileUtils: FileUtils
    var markdownNames = ["about"]

    func dirPath() -> [String] {
        ["about"]
    }

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        markdown["about"]!
    }

    func pageTitle() -> String {
        "About 'Songs to the Siren'"
    }
}
