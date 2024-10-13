import Foundation

struct RubyExport {
    let fileUtils: FileUtils
    let songList: SongList

    func export() {
        let songMap  = songList.makeSongMap()

        var output = ""

        // Output all countries and tags
        Song.Tag.allCases.forEach { tag in
            output += "tag_\(String(describing: tag)) = Tag.create!(name: '\(tag.rawValue)')\n"
        }

        Song.Country.allCases.forEach { tag in
            output += "country_\(String(describing: tag)) = Country.create!(name: '\(tag.rawValue)')\n"
        }

        for song in songList.songs.reversed() {
            let summary = readMarkdown("summary", song: song.dir)
            let article = readMarkdown("article", song: song.dir)
            let createdAt = formatDate(song.createdAt)
            let updatedAt = formatDate(song.updatedAt)
            output += summary
            output += article
            output += "s = Song.create!(id: \(song.id), artist: %q(\(song.artist)), article: article, summary: summary, title: %q(\(song.title)), album: %q(\(song.album)), released: %q(\(song.released)), max_rez: \(song.maxRez), image: %q(\(song.dir)), created_at: %q(\(createdAt)), updated_at: %q(\(updatedAt)))\n"

            song.tags.forEach { tag in
                output += "s.tags << tag_\(String(describing: tag))\n"
            }

            song.country.forEach { country in
                output += "s.countries << country_\(String(describing: country))\n"
            }

            song.links.forEach { link in
                let linkData = getLinkData(link, songMap: songMap)
                output += "s.links << Link.build(\(linkData))\n"
            }
        }

        fileUtils.writeFile(dirs: [], file: "seeds.rb", content: output)
    }

    func readMarkdown(_ type: String, song: String) -> String {
        let content = fileUtils.readFile(dirs: ["song", song], file: "\(type).md")
        return """
        \(type) = \"\"\"
        \(content)
        \"\"\"\n
        """
    }

    func getLinkData(_ link: SongLink, songMap: [String: SongList.SongMap]) -> String {
        var output: String

        switch link.linkType {
            case let .youtubeVideo(code, offset):
                output = "link_type: :youtube_video, link_value: '\(code)', offset: \(offset)"

            case let .youtubeLink(code, offset):
                output = "link_type: :youtube_link, link_value: '\(code)', offset: \(offset)"

            case let .youtubePlaylist(list):
                output = "link_type: :youtube_playlist, link_value: '\(list)'"

            case let .wikipedia(page):
                output = "link_type: :wikipedia, link_value: '\(page)'"

            case let .song(song):
                let linkedSong = songMap[song]!.this!
                output = "link_type: :song, link_value: '\(linkedSong.id)'"

            case let .tag(tag):
                output = "link_type: :tag, link_value: 'tag\(String(describing: tag)).id'"

            case let .other(url):
                output = "link_type: :other, link_value: '\(url)'"
        }

        if let embeddedText = link.embedText {
            output += ", embedded_text: '\(embeddedText)'"
        }
        if let listText = link.listText {
            output += ", list_text: '\(listText)'"
        }

        return output
    }

    func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_GB_POSIX")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        formatter.timeZone = TimeZone(identifier: "Europe/London")

        return formatter.string(from: date)
    }
}
