import Foundation

struct AboutPage: Page {
    let fileUtils: FileUtils
    var dirPath = ["about"]
    var markdownNames = ["about"]

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        markdown["about"]!
    }

    func pageTitle() -> String {
        return "About 'Songs to the Siren'"
    }

}
