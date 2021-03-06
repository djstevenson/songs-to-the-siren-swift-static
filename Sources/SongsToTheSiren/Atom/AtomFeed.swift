import Foundation
import Html

struct AtomFeed {
    let fileUtils: FileUtils
    let songList: SongList

    func publish() {
        let atomNS = "http://www.w3.org/2005/Atom"
        let root = XMLElement(name: "feed")
        root.addAttribute(XMLNode.attribute(withName: "xmlns", stringValue: atomNS) as! XMLNode)
        let xml = XMLDocument(rootElement: root)
        xml.characterEncoding = "utf-8"

        root.addChild(XMLElement(name: "title", stringValue: "Songs to the Siren"))
        root.addChild(XMLElement(name: "link", stringValue: "https://songstothesiren.com/"))
        root.addChild(XMLElement(name: "updated", stringValue: siteUpdatedAt()))
        let author = XMLElement(name: "author")
        author.addChild(XMLElement(name: "name", stringValue: "David Stevenson"))
        root.addChild(author)
        root.addChild(XMLElement(name: "id", stringValue: "urn:uuid:48d35c25-87c4-4df9-95f9-49d16ea00976"))

        for song in songList.songs {
            let entry = XMLElement(name: "entry")
            let title = XMLElement(name: "title", stringValue: song.title)
            let link = XMLElement(name: "link")
            link.addAttribute(XMLNode.attribute(withName: "href", stringValue: "https://songstothesiren.com/songs/\(song.dir)") as! XMLNode)
            let id = XMLElement(name: "id", stringValue: songId(song))

            let updated = XMLElement(name: "updated", stringValue: songUpdatedAt(song))
            let summary = XMLElement(name: "summary", stringValue: summaryHtml(song))

            entry.addChild(title)
            entry.addChild(link)
            entry.addChild(id)
            entry.addChild(updated)
            entry.addChild(summary)

            root.addChild(entry)
        }

        let xmlData = xml.xmlData(options: .nodePrettyPrint)
        fileUtils.writeData(dirs: [], file: "atom.xml", data: xmlData)
    }

    func songId(_ song: Song) -> String {
        // It’s not a hash, it’s an ID. But it’s good enough
        // for the Atom feed
        return "\(song.dir)-\(song.id)"
    }

    func songUpdatedAt(_ song: Song) -> String {
        formatDate(song.updatedAt)
    }

    func siteUpdatedAt() -> String {
        var updated = Date.distantPast

        for song in songList.songs {
            let songUpdated = song.updatedAt
            if updated < songUpdated {
                updated = songUpdated
            }
        }

        return formatDate(updated)
    }

    func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_GB_POSIX")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        formatter.timeZone = TimeZone(identifier: "Europe/London")

        return formatter.string(from: date)
    }

    func summaryHtml(_ song: Song) -> String {
        let dummy = Dictionary<String, SongList.SongMap>()
        let songPage = SongPage(fileUtils: fileUtils, song: song, songMap: dummy)
        return songPage.loadFile("summary")
    }

}
