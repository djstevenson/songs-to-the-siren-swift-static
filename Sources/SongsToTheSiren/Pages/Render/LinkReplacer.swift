import Html

enum LinkReplacer: String {

    case video
    case link

    func newHtml(for id: String, song: Song) -> HtmlNode {
        switch self {

        case .video:
            return song.video.renderEmbedded()
        case .link:
            return findLink(id, in: song.links)!.renderEmbedded()
        }
    }

    private func findLink(_ name: String, in links: [SongLink]) -> SongLink? {
        if let index = links.firstIndex(where: { $0.embedded?.id == name }) {
            return links[index]
        }
        return nil
    }
}
