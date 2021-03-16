import Foundation
import Html

struct AtomFeed {
    let fileUtils: FileUtils
    let songList: SongList

    func publish() {
        // swiftlint:disable force_cast
        let atomNS = "http://www.w3.org/2005/Atom"
        let root = XMLElement(name: "feed")
        root.addAttribute(XMLNode.attribute(withName: "xmlns", stringValue: atomNS) as! XMLNode)
        let feed = XMLDocument(rootElement: root)
        feed.characterEncoding = "utf-8"

        root.addChild(XMLElement(name: "title", stringValue: "Songs to the Siren"))
        root.addChild(XMLElement(name: "link", stringValue: "https://songstothesiren.com/"))
        root.addChild(XMLElement(name: "updated", stringValue: siteUpdatedAt()))
        let author = XMLElement(name: "author")
        author.addChild(XMLElement(name: "name", stringValue: "David Stevenson"))
        root.addChild(author)
        root.addChild(XMLElement(name: "id", stringValue: "urn:uuid:48d35c25-87c4-4df9-95f9-49d16ea00976"))

        for song in songList.songs {
            let songUrl = URL(string: "https://songstothesiren.com/song/\(song.dir).html")!.absoluteString
            let entry = XMLElement(name: "entry")
            let title = XMLElement(name: "title", stringValue: song.title)
            let link = XMLElement(name: "link")
            link.addAttribute(XMLNode.attribute(withName: "rel", stringValue: "alternate") as! XMLNode)
            link.addAttribute(XMLNode.attribute(withName: "href", stringValue: songUrl) as! XMLNode)
            let id = XMLElement(name: "id", stringValue: songUrl)

            let updated = XMLElement(name: "updated", stringValue: songUpdatedAt(song))
            let summary = XMLElement(name: "summary", stringValue: summaryHtml(song))

            entry.addChild(title)
            entry.addChild(link)
            entry.addChild(id)
            entry.addChild(updated)
            entry.addChild(summary)

            root.addChild(entry)
        }

        // swiftlint:enable force_cast
        let xmlData = feed.xmlData(options: .nodePrettyPrint)
        fileUtils.writeData(dirs: [], file: "atom.xml", data: xmlData)
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
        let dummy = [String: SongList.SongMap]()
        let songPage = SongPage(fileUtils: fileUtils, song: song, songMap: dummy)
        return songPage.loadFile("summary")
    }

}
