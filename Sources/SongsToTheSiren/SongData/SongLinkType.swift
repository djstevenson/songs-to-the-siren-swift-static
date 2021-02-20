import Foundation

enum SongLinkType {
    case youtubeVideo    (code: String, offset: Int = 0)
    case youtubeLink     (code: String, offset: Int = 0)
    case wikipedia       (page: String)
    case songstothesiren (song: String)
    case other           (url:  URL)
}
