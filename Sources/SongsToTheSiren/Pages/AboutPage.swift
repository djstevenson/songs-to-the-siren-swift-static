import Foundation

struct AboutPage: Page {
    let fileUtils: FileUtils
    var markdownNames = ["about"]

    func dirPath() -> [String] { [] }
    func filename() -> String { "about" }

    func validate() {}

    func pageContent(markdown: [String : HtmlNode]) -> HtmlNode {
        guard let content = markdown["about"] else {
            fatalError("Bad 'about' markdown")
        }
        return content
    }

    func pageTitle() -> String {
        "About “Songs to the Siren”"
    }
}
