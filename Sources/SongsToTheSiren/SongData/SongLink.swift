import Foundation

// Making this an enum (given the multitide of associated values, including
// three common to all cases), makes this type definition seem too complex.
// BUT it improves the usage of the type considerably, so I think the outcome
// is positive.
struct SongLink {
    let id: String
    var embedText: String? = nil
    var listText: String? = nil
    let linkType: SongLinkType
}
