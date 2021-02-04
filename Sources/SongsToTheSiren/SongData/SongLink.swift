import Foundation

// Making this an enum (given the multitide of associated values, including
// three common to all cases), makes this type definition seem too complex.
// BUT it improves the usage of the type considerably, so I think the outcome
// is positive.
enum SongLink {
    struct Common {
        let id: String
        let embed: String
        let list: String
    }

    case youtube(data: SongLink.Common,         code: String, offset: Int = 0)
    case wikipedia(data: SongLink.Common,       page: String)
    case songstothesiren(data: SongLink.Common, song: Int)
    case other(data: SongLink.Common,           url: URL)
}
