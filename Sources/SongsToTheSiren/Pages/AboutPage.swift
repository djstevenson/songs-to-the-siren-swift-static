import Foundation

struct AboutPage: Page {
    let fileUtils: FileUtils
    var markdownNames = ["about"]

    func dirPath() -> [String] { [] }
    func filename() -> String { "about" }

    func validate() -> Void {}

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        markdown["about"]!
    }

    func pageTitle() -> String {
        "About “Songs to the Siren”"
    }
}
