import Foundation

struct AtomFeed {
    let fileUtils: FileUtils
    let songList: SongList

    func publish() {
        let atomNS = "http://www.w3.org/2005/Atom"
        let root = XMLElement(name: "feed")
        root.addAttribute(XMLNode.attribute(withName: "xmlns", stringValue: atomNS) as! XMLNode)
        let xml = XMLDocument(rootElement: root)

        // TODO Add feed fields


        for song in songList.songs {
            let entry = XMLElement(name: "entry")
            let title = XMLElement(name: "title", stringValue: song.title)
            let link = XMLElement(name: "link")
            link.addAttribute(XMLNode.attribute(withName: "href", stringValue: "https://songstothesiren.com/songs/\(song.dir)") as! XMLNode)
            let id = XMLElement(name: "id", stringValue: song.atomFeedID())
            let updated = XMLElement(name: "updated", stringValue: "2003-12-13T18:30:02Z") // Get from song, in this format
            let summary = XMLElement(name: "summary", stringValue: "this is the song summary") // Get from song summary MD

            entry.addChild(title)
            entry.addChild(link)
            entry.addChild(id)
            entry.addChild(updated)
            entry.addChild(summary)

            root.addChild(entry)
        }

        let xmlData = xml.xmlData(options: .nodePrettyPrint)
        print(xmlData.map { String(format: "%c", $0) }.joined())
    }

    
}
