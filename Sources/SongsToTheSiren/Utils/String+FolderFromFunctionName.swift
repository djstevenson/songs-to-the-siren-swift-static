extension String {
    static func folderFromFunctionName(name: String) -> String {
        // A fair amount of string copying here, but we do this so infrequently
        // that it's ok
        String(name.capitalizingFirstLetter().dropLast(2))
    }
}
