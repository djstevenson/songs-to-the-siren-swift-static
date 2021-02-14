import Foundation
import Html

extension Page {

    func generate() -> Void {
        let markdownContents = loadMarkdown()
        let htmlPage = embed(markdown: markdownContents)
        writeContent(render(htmlPage))
    }

    // Embeds the page-specific content into an HtmlNode wrapper
    func embed(markdown: [String: HtmlNode]) -> HtmlNode {
        let title = pageTitle()

        return .document(
            .html(
                attributes: [.lang(.en)],
                .head(
                    .meta(attributes: [.charset(.utf8)]),
                    .title(title),
                    .meta(viewport: .width(.deviceWidth), .initialScale(1)),
                    .link(attributes: [.rel(.stylesheet), .href("/songs-to-the-siren.css")])
                ),
                .body(
                    .h1(.text(title)),
                    pageContent(markdown: markdown)
                )
            )
        )
    }

    private func writeContent(_ content: String) {
        fileUtils.writeFile(dirs: dirPath(), file: "index.html", content: content)
    }
}
