import Foundation

enum SongLinkType {
    case youtubeVideo    (code: String, offset: Int = 0)
    case youtubeLink     (code: String, offset: Int = 0)
    case wikipedia       (page: String)
    case song            (song: String)
    case tag             (tag:  Song.Tag)
    case other           (url:  URL)
    // TODO Need icons for all these
}
