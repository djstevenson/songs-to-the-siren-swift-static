import Html

enum LinkReplacer: String {

    case time  // Time Signature shortcuts, e.g. ^time(3|4)
    case link  // Link shortcuts, e.g. ^link(link-id)

    func newHtml(for id: String, song: Song) -> HtmlNode {
        switch self {

        case .link:
            guard let link = song.links.find(id: id) else {
                return .fragment([])
            }
            return link.renderEmbedded()

        case .time:
            let parts = id.components(separatedBy: "|")
            guard parts.count == 2 else {
                fatalError("Invalid time sig code \(id) - use 3|4, for example")
            }

            return .span(attributes:[.class("time-signature")],
                         .sup(.i(.text(parts[0]))),
                              .sub(.i(.text(parts[1])))
            )
        }
    }
}
