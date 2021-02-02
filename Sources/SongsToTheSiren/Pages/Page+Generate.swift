import Foundation

extension Page {
    func generate() -> Void {
        writeContent("<html></html")
        
    }
    
    private func writeContent(_ content: String) {
        let outDir = self.outDir(relativeTo: partialUrl)
        let fileUrl = outDir.appendingPathComponent("index.html", isDirectory: false)
        
        try! FileManager.default.createDirectory(at: outDir, withIntermediateDirectories: true)
        try! content.write(to: fileUrl, atomically: true, encoding: .utf8);
    }
}
