import Foundation
import Html

extension SongLink {

    private var url: URL {
        switch self.linkType {
        case let .youtubeVideo(code, offset), let .youtubeLink(code, offset):
            let time = offset > 0 ? "?t=\(offset)" : ""
            return URL(string: "https://youtu.be/\(code)\(time)")!

        case let .youtubePlaylist(list):
            return URL(string: "https://youtube.com/playlist?list=\(list)")!

        case let .wikipedia(page):
            return URL(string: "https://en.wikipedia.org/wiki/\(page)")!

        case let .song(song):
            return URL(string: "/song/\(song).html")!

        case let .tag(tag):
            return URL(string: "/tag/\(tag).html")!

        case let .other(url):
            return url
        }
    }

    private var cssClass: String {
        switch self.linkType {
        case .youtubeVideo, .youtubeLink, .youtubePlaylist:
            return "youtube"
        case .wikipedia:
            return "wikipedia"
        case .song, .tag:
            return "songstothesiren"
        case .other:
            return "other"
        }
    }

    func renderInList() -> ChildOf<Tag.Ul> {
        guard let listText = self.listText else {
            return .fragment([])
        }

        return
            .li(attributes: [.class(self.cssClass)],
                .a(attributes: [.class("link w-fill flex p-2 pl-3"), .href(url.absoluteString)],
                renderIcon(icon:self.cssClass),
                .span(attributes: [.class("ml-2 truncate")], .text(listText))
            )
        )
    }

    func renderEmbedded() -> HtmlNode {
        switch self.linkType {
        case let .youtubeVideo(code, offset):
            let time = offset > 0 ? "?start=\(offset)" : ""
            let url = URL(string: "https://www.youtube-nocookie.com/embed/\(code)\(time)")!
            return
                .div(attributes: [.class("aspect-w-16 aspect-h-9 mt-4 mb-4")],
                .iframe(attributes: [
                    .src(url.absoluteString),
                    .init("frameborder", "0"),
                    .init("allow", "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"),
                    .init("allowfullscreen", ""),
                ])
            )
        default:
            guard let embedText = self.embedText else {
                return .fragment([])
            }

            return .a(attributes: [.class("link"), .href(url.absoluteString)], .text(embedText))
        }
    }

    func renderIcon(icon: String) -> HtmlNode {
        .img(src:"/icons/\(icon)-1x.png", alt:"\(icon) icon", attributes: [
            .class("flex-none"),
            .height(32),
            .width(32),
            .srcset([
                "/icons/\(icon)-4x.png": .x(4),
                "/icons/\(icon)-3x.png": .x(3),
                "/icons/\(icon)-2x.png": .x(2),
                "/icons/\(icon)-1x.png": .x(1),
            ]),
        ])
    }
}
