import Foundation

struct Song {
    enum Tag: String {
        case actor = "Actor"
        case addedBeat = "Added Beat"
        case bassSolo = "Bass Solo"
        case brass = "Brass"
        case brighton = "Brighton"
        case bristol = "Bristol"
        case brothers = "Brothers"
        case christmasCarol = "Christmas Carol"
        case classical = "Classical"
        case collaboration = "Collaboration"
        case comeback = "Comeback"
        case compilationAlbum = "Compilation Album"
        case complex = "Complex"
        case cornish = "Cornish"
        case cornwall = "Cornwall"
        case coventry = "Coventry"
        case cover = "Cover"
        case debut = "Début"
        case decade1940s = "1940s"
        case decade1950s = "1950s"
        case decade1960s = "1960s"
        case decade1970s = "1970s"
        case decade1980s = "1980s"
        case decade1990s = "1990s"
        case decade2000s = "2000s"
        case decade2010s = "2010s"
        case decade2020s = "2020s"
        case disco = "Disco"
        case dogsInVideo = "Dogs In Video"
        case drugs = "Drugs"
        case dub = "Dub"
        case electronic = "Electronic"
        case ep = "EP"
        case fWord = "F Word"
        case folk = "Folk"
        case fourAD = "4AD"
        case funk = "Funk"
        case giorgioMoroder = "Giorgio Moroder"
        case glam = "Glam"
        case glitch = "Glitch"
        case golden2004 = "2004 Golden Year"
        case guestVocals = "Guest Vocals"
        case hopeSandoval = "Hope Sandoval"
        case house = "House"
        case husbandWife = "Husband/Wife"
        case hype = "Hype"
        case icelandic = "Icelandic"
        case indie = "Indie"
        case indieDance = "Indie/Dance"
        case instrumental = "Instrumental"
        case isaacHayes = "Isaac Hayes"
        case italianHouse = "Italian House"
        case jarvisCocker = "Jarvis Cocker"
        case kathleenHanna = "Kathleen Hanna"
        case kristinHersh = "Kristin Hersh"
        case kids = "Kids"
        case leeds = "Leeds"
        case live = "Live"
        case liverpool = "Liverpool"
        case lizFraser = "Liz Fraser"
        case lonelyIsAnEyesore = "Lonely Is An Eyesore"
        case longSongs = "Long Songs"
        case manchester = "Manchester"
        case mashup = "Mashup"
        case movie = "Movie"
        case newRomantic = "New Romantic"
        case ninjaTune = "Ninja Tune"
        case noBass = "No Bass"
        case northampton = "Northampton"
        case oneLittleIndian = "One Little Indian"
        case openingTrack = "Opening Track"
        case platinum2016 = "2016 Platinum Year"
        case postPunk = "Post-punk"
        case posthumous = "Posthumous"
        case punk = "Punk"
        case puns = "Puns"
        case reggae = "Reggae"
        case reinvention = "Reinvention"
        case remix = "Remix"
        case rickBeato = "Rick Beato"
        case ringTone = "Ring Tone"
        case riotGrrrl = "Riot Grrrl"
        case rockOpera = "Rock Opera"
        case sample = "Sample"
        case sciFi = "SciFi"
        case shouty = "Shouty"
        case sideProject = "Side Project"
        case sixMusic = "6music"
        case ska = "Ska"
        case skippedBeat = "Skipped Beat"
        case slyRobbie = "Sly & Robbie"
        case spokenWord = "Spoken Word"
        case supergroup = "Supergroup"
        case tapeLoops = "Tape Loops"
        case terryHall = "Terry Hall"
        case timeSignatureChange = "Time Signature Change"
        case tr909 = "TR-909"
        case tripHop = "Trip Hop"
        case twoDrummers = "Two Drummers"
        case twoForOne = "2 for 1"
        case twoTone = "2 Tone"
        case ukulele = "Ukulele"
        case waltzTime = "Waltz Time"
        case year2020 = "2020"
    }

    enum Country: String {
        case australia = "🇦🇺"
        case belgium   = "🇧🇪"
        case canada    = "🇨🇦"
        case iceland   = "🇮🇸"
        case ireland   = "🇮🇪"
        case italy     = "🇮🇹"
        case jamaica   = "🇯🇲"
        case poland    = "🇵🇱"
        case scotland  = "🏴󠁧󠁢󠁳󠁣󠁴󠁿"
        case sweden    = "🇸🇪"
        case uk        = "🇬🇧"
        case usa       = "🇺🇸"
        case wales     = "🏴󠁧󠁢󠁷󠁬󠁳󠁿"
    }

    enum HomePageStyle {
        case fullPanel
        case semiPanel
        case listing
    }

    let id:         Int
    let style:     HomePageStyle
    let dir:       String
    let artist:    String
    let title:     String
    let album:     String
    let released:  String
    let maxRez:    Int
    let createdAt: Date
    let updatedAt: Date
    let tags:      [Tag]
    let country:   [Country]
    let links:     SongLinks
}
