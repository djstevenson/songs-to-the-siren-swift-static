import Foundation

// TODO Docs

// A vistor that traverses the AST tree from Markdown, producing
// swift-html nodes. So, it translates the Down tree to an HTML one.
// Incomplete, not least because Down doesn't seem to generate
// all of its node types.

import Down
import Html

struct HtmlVisitor: Visitor {
    
    typealias Result = HtmlNode
    typealias HtmlAttr = (key: String, value: String?)
    
    private func nodeWithChildren(_ node: DownNode, tag: String, attrs: [HtmlAttr] = []) -> HtmlNode {
        return .element(tag, attrs, .fragment(visitChildren(of: node)))
    }
    
    private func nodeWithoutChildren(tag: String, attrs: [HtmlAttr] = []) -> HtmlNode {
        return .element(tag, attrs, [])
    }
    
    private func justChildren(_ node: DownNode) -> HtmlNode {
        return .fragment(visitChildren(of: node))
    }
    
    private func divWithChildren(_ node: DownNode) -> HtmlNode {
        return .element("div", [], .fragment(visitChildren(of: node)))
    }
    
    public func visit(document node: Document) -> HtmlNode {
        return divWithChildren(node)
    }
    
    public func visit(blockQuote node: BlockQuote) -> HtmlNode {
        nodeWithChildren(node, tag: "blockquote")
    }
    
    public func visit(list node: List) -> HtmlNode {
        nodeWithChildren(node, tag: "ul")
    }
    
    public func visit(item node: Item) -> HtmlNode {
        nodeWithChildren(node, tag: "li")
    }
    
    public func visit(codeBlock node: CodeBlock) -> HtmlNode {
        //Need to get literal content
        nodeWithChildren(node, tag: "code")
    }
    
    public func visit(code node: Code) -> HtmlNode {
        //Need to get literal content
        nodeWithChildren(node, tag: "code")
    }
    
    public func visit(paragraph node: Paragraph) -> HtmlNode {
        nodeWithChildren(node, tag: "p")
    }
    
    public func visit(heading node: Heading) -> HtmlNode {
        nodeWithChildren(node, tag: "h\(node.headingLevel)")
    }
    
    public func visit(thematicBreak node: ThematicBreak) -> HtmlNode {
        nodeWithoutChildren(tag: "hr")
    }
    
    public func visit(text node: DownText) -> HtmlNode {
        .text(node.literal ?? "")
    }
    
    // No backslash at end of line - just normal line feed
    public func visit(softBreak node: SoftBreak) -> HtmlNode {
        .text("")
    }
    
    // Backslash at end of line
    public func visit(lineBreak node: LineBreak) -> HtmlNode {
        nodeWithoutChildren(tag: "br")
    }
    
    // Cmark: <responsive-image src="foo.jpg" />
    public func visit(htmlBlock node: HtmlBlock) -> HtmlNode {
        nodeWithChildren(node, tag: "div")
    }

    // Cmark: <arse>something</arse>
    // HtmlInline "<arse>"
    //    Text "something"
    // HtmlInline "</arse>"
    public func visit(htmlInline node: HtmlInline) -> HtmlNode {
        .raw(node.literal ?? "")
    }
    
    public func visit(customInline node: CustomInline) -> HtmlNode {
        fatalError("Not supported: CustomInline")
    }
    
    public func visit(customBlock node: CustomBlock) -> HtmlNode {
        fatalError("Not supported: CustomBlock")
    }

    public func visit(emphasis node: Emphasis) -> HtmlNode {
        nodeWithChildren(node, tag: "em")
    }
    
    public func visit(strong node: Strong) -> HtmlNode {
        nodeWithChildren(node, tag: "strong")
    }
    
    // Attrs: image.title, image.url
    public func visit(link node: Link) -> HtmlNode {
        // Need to get link etc.
        nodeWithChildren(node, tag: "a", attrs: [(key: "href", value: node.url)])
    }
    
    // Cmark: ![foo](/url "title")
    // HTML:  <p><img src="/url" alt="foo" title="title" /></p>
    // Attrs: image.title, image.url
    public func visit(image node: DownImage) -> HtmlNode {
        // Need to get url etc
        nodeWithChildren(node, tag: "img")
    }
    
}
