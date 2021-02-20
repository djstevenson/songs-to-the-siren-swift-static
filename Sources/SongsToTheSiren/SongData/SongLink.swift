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

    case youtubeVideo    (embedded: SongLink.Embed,        listing: SongLink.List? = nil, code: String, offset: Int = 0)
    case youtubeLink     (embedded: SongLink.Embed? = nil, listing: SongLink.List? = nil, code: String, offset: Int = 0)
    case wikipedia       (embedded: SongLink.Embed? = nil, listing: SongLink.List? = nil, page: String)
    case songstothesiren (embedded: SongLink.Embed? = nil, listing: SongLink.List? = nil, song: String)
    case other           (embedded: SongLink.Embed? = nil, listing: SongLink.List? = nil, url:  URL)
}

extension SongLink.Embed: ExpressibleByDictionaryLiteral {
    init(dictionaryLiteral elements: (String, String)...) {
        // We lose some compile-time type safety here, this fails
        // at run-time if we pass a duff dictionary
        // (anything other than one element).
        // For THIS application, it's a fair trade-off.

        guard elements.count == 1 else {
            fatalError("Bad dictionary for SongLink.Embed \(elements)")
        }

        let (linkId, linkText) = elements.first!   // Safe force-unwrap
        self = SongLink.Embed(id: linkId, text: linkText)
    }
}

extension SongLink.List: ExpressibleByStringLiteral {
    init(stringLiteral value: String) {
        self = SongLink.List(text: value)
    }
}
