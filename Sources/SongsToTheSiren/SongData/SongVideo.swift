import Foundation

enum SongVideo {
    struct Common {
        let id: String
        let desc: String
    }

    case youtube(data: Common, code: String, offset: Int = 0)
//    ... Add Vimeo etc later
}

// Pattern from https://medium.com/swlh/use-enums-effectively-fe2d73b7ed28
extension SongVideo {
    var id: String {
        switch self {
        case .youtube(let data, _, _):
            return data.id
        }
    }
}

