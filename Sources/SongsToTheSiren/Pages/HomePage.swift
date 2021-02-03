import Foundation

struct HomePage: Page {
    let fileUtils: FileUtils
    var dirPath = ["home"]
    var markdownNames = ["home"]

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        markdown["home"]!
    }

    func pageTitle() -> String {
        return "Songs to the Siren - a blog about songs"
    }

}
