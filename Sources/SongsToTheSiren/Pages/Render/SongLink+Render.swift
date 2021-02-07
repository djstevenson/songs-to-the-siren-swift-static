import Foundation
import Html

extension SongLink : RenderableLink {

    private var url: URL {
        get {
            switch self {
            case .youtube(_, let code, let offset):
                let t = offset > 0 ? "?t=\(offset)" : ""
                return URL(string: "https://youtu.be/\(code)\(t)")!

            case .wikipedia(_, page: let page):
                return URL(string: "https://en.wikipedia.org/wiki/\(page)")!

            case .songstothesiren(_, song: let song):
                return URL(string: "../../\(song)/index.html")!


            case .other(_, url: let url):
                return url
            }
        }
    }

    // Pattern from https://medium.com/swlh/use-enums-effectively-fe2d73b7ed28
    var id: String {
        switch self {
        case .youtube(let data, _, _):
            return data.id
        case .wikipedia(let data, _):
            return data.id
        case .songstothesiren(let data, _):
            return data.id
        case .other(let data, _):
            return data.id
        }
    }

    var list: String {
        switch self {
        case .youtube(let data, _, _):
            return data.list
        case .wikipedia(let data, _):
            return data.list
        case .songstothesiren(let data, _):
            return data.list
        case .other(let data, _):
            return data.list
        }
    }

    var embed: String {
        switch self {
        case .youtube(let data, _, _):
            return data.embed
        case .wikipedia(let data, _):
            return data.embed
        case .songstothesiren(let data, _):
            return data.embed
        case .other(let data, _):
            return data.embed
        }
    }

    func renderInList() -> ChildOf<Tag.Ul> {
        .li(
            .a(
                attributes: [
                    .id("link-\(id)"),
                    .class("link"),
                    .href(url.absoluteString),
                    .target(.blank)
                ],
                .text(list)
            )
        )
    }

    func renderEmbedded() -> HtmlNode {
        .a(
            attributes: [
                .class("link"),
                .href(url.absoluteString),
                .target(.blank)
            ],
            .text(embed)
        )
    }
}

