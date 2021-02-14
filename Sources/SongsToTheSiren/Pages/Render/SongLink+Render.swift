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
                return URL(string: "/song/\(song)/index.html")!

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

        return .li(
            .a(
                attributes: [
                    .class("link"),
                    .href(url.absoluteString),
                    .target(.blank)
                ],
                .text(listing.text)
            )
        )
    }

    func renderEmbedded() -> HtmlNode {
        guard let embedded = self.embedded else {
            return .fragment([])
        }

        return .a(
            attributes: [
                .class("link"),
                .href(url.absoluteString),
                .target(.blank)
            ],
            .text(embedded.text)
        )
    }
}

