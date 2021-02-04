import Html

protocol RenderableLink {
    func renderInList() -> ChildOf<Tag.Ul>
    func renderEmbedded() -> HtmlNode
}
