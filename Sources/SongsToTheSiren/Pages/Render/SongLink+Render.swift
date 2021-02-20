import Foundation
import Html

extension SongLink : RenderableLink {

    private var url: URL {
        get {
            switch self.linkType {
            case let .youtubeVideo(code, offset):
                let t = offset > 0 ? "?start=\(offset)" : ""
                return URL(string: "https://www.youtube-nocookie.com/embed/\(code)\(t)")!

            case let .youtubeLink(code, offset):
                let t = offset > 0 ? "?t=\(offset)" : ""
                return URL(string: "https://youtu.be/\(code)\(t)")!

            case let .wikipedia(page):
                return URL(string: "https://en.wikipedia.org/wiki/\(page)")!

            case let .songstothesiren(song):
                return URL(string: "/song/\(song)/")!

            case let .other(url):
                return url
            }
        }
    }

    private var cssClass: String {
        get {
            switch self.linkType {
            case .youtubeVideo:
                return "youtube"
            case .youtubeLink:
                return "youtube"
            case .wikipedia:
                return "wikipedia"
            case .songstothesiren:
                return "songstothesiren"
            case .other:
                return "other"
            }
        }
    }

    func renderInList() -> ChildOf<Tag.Ul> {
        guard let listText = self.listText else {
            return .fragment([])
        }

        return .li(attributes: [.class(self.cssClass)],
            .a(attributes: [.href(url.absoluteString)],
                renderIcon(icon:self.cssClass),
                .span(attributes: [.class("link-description")], .text(listText))
            )
        )
    }

    func renderEmbedded() -> HtmlNode {
        switch self.linkType {
        case let .youtubeVideo(code, offset):
            let t = offset > 0 ? "?start=\(offset)" : ""
            let url = URL(string: "https://www.youtube-nocookie.com/embed/\(code)\(t)")!
            return .raw("<div class=\"embed-container\"><iframe src=\"\(url.absoluteString)\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></div>")
        default:
            guard let embedText = self.embedText else {
                return .fragment([])
            }

            return .a(
                attributes: [
                    .href(url.absoluteString),
                    .target(.blank)
                ],
                .text(embedText)
            )
        }
    }
}

