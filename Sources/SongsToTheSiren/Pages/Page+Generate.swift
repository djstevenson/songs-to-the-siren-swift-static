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

        // Boostrap link should have these, not supported by the HTML framework:
        //   integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
        //   crossorigin="anonymous">
        //
        // Similar for the JS
        return .document(
            .html(
                attributes: [.lang(.en)],
                .head(
                    .meta(attributes: [.charset(.utf8)]),
                    .title(title),
                    .meta(viewport: .width(.deviceWidth), .initialScale(1)),
                    .link(attributes: [.rel(.stylesheet), .href("https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css")]),
                    .link(attributes: [.rel(.stylesheet), .href("/songs-to-the-siren.css")])
                ),
                .body(
                    .div(attributes: [.class("container")],
                        header(),
                        pageContent(markdown: markdown)
                    ),
                    .script(attributes: [.src("https://code.jquery.com/jquery-3.5.1.slim.min.js")]),
                    .script(attributes: [.src("https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js")])
                )
            )
        )
    }

    private func writeContent(_ content: String) {
        fileUtils.writeFile(dirs: dirPath(), file: "index.html", content: content)
    }

    private func header() -> HtmlNode {
        .header(
            .div(attributes: [.class("row page-header")],
                 .div(attributes: [.class("col-12")],
                    .h1(homeLink()),
                    aboutLink()
                )
            )
        )
    }

    private func homeLink() -> HtmlNode {
        .a(attributes: [.href("/home/")], .text("Songs to the Siren"))
    }

    private func aboutLink() -> HtmlNode {
        .a(attributes: [.href("/about/")], .text("About this blog..."))
    }
}
