import Foundation

struct HomePage: Page {
    let fileUtils: FileUtils
    var markdownNames = ["home"]

    func dirPath() -> [String] {
        ["home"]
    }

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        markdown["home"]!
    }

    func pageTitle() -> String {
        return "Songs to the Siren - a blog about songs"
    }

}
