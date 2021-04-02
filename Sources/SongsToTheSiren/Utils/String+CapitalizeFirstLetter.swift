// c/o Paul Hudson at
// https://www.hackingwithswift.com/example-code/strings/how-to-capitalize-the-first-letter-of-a-string

extension String {
    func capitalizingFirstLetter() -> String {
        prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
