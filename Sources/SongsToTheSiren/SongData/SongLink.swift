import Foundation

// Making this an enum (given the multitide of associated values, including
// three common to all cases), makes this type definition seem too complex.
// BUT it improves the usage of the type considerably, so I think the outcome
// is positive.
enum SongLink {
    struct Embed {
        let id: String
        let text: String
    }

    struct List {
        let text: String
    }

    case youtube         (embedded: SongLink.Embed? = nil, listing: SongLink.List? = nil, code: String, offset: Int = 0)
    case wikipedia       (embedded: SongLink.Embed? = nil, listing: SongLink.List? = nil, page: String)
    case songstothesiren (embedded: SongLink.Embed? = nil, listing: SongLink.List? = nil, song: String)
    case other           (embedded: SongLink.Embed? = nil, listing: SongLink.List? = nil, url:  URL)
}

extension SongLink.List: ExpressibleByStringLiteral {
    init(stringLiteral value: String) {
        self = SongLink.List(text: value)
    }
}
