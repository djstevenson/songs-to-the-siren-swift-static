import Foundation

extension Page {
    func generate() -> Void {
        writeContent("<html>\(dirPath)</html>\n")
    }

    private func writeContent(_ content: String) {
        fileUtils.writeFile(dirs: dirPath, file: "index.html", content: content)
    }
}
