import Html

protocol RenderableLink {
    func renderInList() -> ChildOf<Tag.Ul>
    func renderEmbedded() -> HtmlNode
    func renderIcon(icon: String) -> HtmlNode
}

extension RenderableLink {
    func renderIcon(icon: String) -> HtmlNode {
        .img(src:"/icons/\(icon)-1x.png", alt:"\(icon) icon", attributes: [
            .height(32),
            .width(32),
            .srcset(["/icons/\(icon)-4x.png": .x(4), "/icons/\(icon)-3x.png": .x(3), "/icons/\(icon)-2x.png": .x(2), "/icons/\(icon)-1x.png": .x(1)])
        ])
    }
}
