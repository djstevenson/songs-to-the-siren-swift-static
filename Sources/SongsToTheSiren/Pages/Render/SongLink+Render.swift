import Foundation
import Html

extension SongLink : RenderableLink {

    private var url: URL {
        get {
            switch self {
            case let .youtubeVideo(_, _, code, offset):
                let t = offset > 0 ? "?start=\(offset)" : ""
                return URL(string: "https://www.youtube-nocookie.com/embed/\(code)\(t)")!

            case let .youtubeLink(_, _, code, offset):
                let t = offset > 0 ? "?t=\(offset)" : ""
                return URL(string: "https://youtu.be/\(code)\(t)")!

            case let .wikipedia(_, _, page):
                return URL(string: "https://en.wikipedia.org/wiki/\(page)")!

            case let .songstothesiren(_, _, song):
                return URL(string: "/song/\(song)/")!

            case let .other(_, _, url):
                return url
            }
        }
    }

    // Pattern from https://medium.com/swlh/use-enums-effectively-fe2d73b7ed28
    var listing: SongLink.List? {
        switch self {
        case let .youtubeVideo(_, listing, _, _):
            return listing
        case let .youtubeLink(_, listing, _, _):
            return listing
        case let .wikipedia(_, listing, _):
            return listing
        case let .songstothesiren(_, listing, _):
            return listing
        case let .other(_, listing, _):
            return listing
        }
    }

    var cssClass: String {
        switch self {
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

    var embedded: SongLink.Embed? {
        switch self {
        case let .youtubeVideo(embedded, _, _, _):
            return embedded
        case let .youtubeLink(embedded, _, _, _):
            return embedded
        case let .wikipedia(embedded, _, _):
            return embedded
        case let .songstothesiren(embedded, _, _):
            return embedded
        case let .other(embedded, _, _):
            return embedded
        }
    }

    func renderInList() -> ChildOf<Tag.Ul> {
        guard let listing = self.listing else {
            return .fragment([])
        }

        return .li(attributes: [.class(self.cssClass)],
            .a(attributes: [.href(url.absoluteString)],
                renderIcon(icon:self.cssClass),
                .span(attributes: [.class("link-description")], .text(listing.text))
            )
        )
    }

    func renderEmbedded() -> HtmlNode {
        switch self {
        case let .youtubeVideo(_, _, code, offset):
            let t = offset > 0 ? "?start=\(offset)" : ""
            let url = URL(string: "https://www.youtube-nocookie.com/embed/\(code)\(t)")!
            return .raw("<div class=\"embed-container\"><iframe src=\"\(url.absoluteString)\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></div>")
        default:
            guard let embedded = self.embedded else {
                return .fragment([])
            }

            return .a(
                attributes: [
                    .href(url.absoluteString),
                    .target(.blank)
                ],
                .text(embedded.text)
            )
        }
    }
}

