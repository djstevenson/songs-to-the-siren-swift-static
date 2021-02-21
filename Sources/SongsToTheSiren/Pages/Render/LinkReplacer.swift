import Html

enum LinkReplacer: String {

//    case video // Only 'link' currently supported.
    case link

    func newHtml(for id: String, song: Song) -> HtmlNode {
        switch self {

        case .link:
            guard let link = song.links.find(id: id) else {
                return .fragment([])
            }
            return link.renderEmbedded()
        }
    }
}
