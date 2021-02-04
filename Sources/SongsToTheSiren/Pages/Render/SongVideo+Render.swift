import Foundation
import Html

extension SongVideo : RenderableLink {

    func renderInList() -> ChildOf<Tag.Ul> {
        var result : ChildOf<Tag.Ul>
        switch self {
        case .youtube(let data, let code, let offset):
            let t = offset > 0 ? "?t=\(offset)" : ""
            let url = URL(string: "https://www.youtube.com/watch?v=\(code)\(t)")!
            result = .li(
                .a(
                    attributes: [
                        .id("link-\(data.id)"),
                        .class("link"),
                        .href(url.absoluteString),
                        .target(.blank)
                    ],
                    .text(data.desc)
                )
            )
        }

        return result
    }

    func renderEmbedded() -> HtmlNode {
        var result : HtmlNode

        switch self {
        case .youtube(_, let code, let offset):
            let t = offset > 0 ? "?start=\(offset)" : ""
            let url = URL(string: "https://www.youtube-nocookie.com/embed/\(code)\(t)")!
            result = .raw("<div class=\"embed-container\"><iframe src=\"\(url.absoluteString)\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></div>")
        }
        return result
    }
}
