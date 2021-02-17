import Foundation
import Html

extension SongLink : RenderableLink {

    private var url: URL {
        get {
            switch self {
            case .youtube(_, _, let code, let offset):
                let t = offset > 0 ? "?t=\(offset)" : ""
                return URL(string: "https://youtu.be/\(code)\(t)")!

            case .wikipedia(_, _, page: let page):
                return URL(string: "https://en.wikipedia.org/wiki/\(page)")!

            case .songstothesiren(_, _, song: let song):
                return URL(string: "/song/\(song)/")!

            case .other(_, _, url: let url):
                return url
            }
        }
    }

    // Pattern from https://medium.com/swlh/use-enums-effectively-fe2d73b7ed28
    var listing: SongLink.List? {
        switch self {
        case let .youtube(_, listing, _, _):
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
        case .youtube:
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
        case let .youtube(embedded, _, _, _):
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

