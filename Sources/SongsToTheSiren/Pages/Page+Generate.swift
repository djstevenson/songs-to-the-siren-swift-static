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
                .head(
                    .title(title)
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
