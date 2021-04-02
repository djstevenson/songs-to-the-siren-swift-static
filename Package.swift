// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SongsToTheSiren",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .executable(name: "songs-to-the-siren", targets: ["SongsToTheSiren"])
    ],
    dependencies: [
        .package(                 url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.4.1")),
        .package(name: "Down",    url: "https://github.com/johnxnguyen/Down",            .upToNextMinor(from: "0.10.0")),
        .package(name: "Html",    url: "https://github.com/djstevenson/swift-html",      .branch("sorted-srcset-attributes")),
        .package(                 url: "https://github.com/pointfreeco/swift-parsing",   .upToNextMinor(from: "0.1.2"))
    ],
    targets: [
        .target(
            name: "SongsToTheSiren",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                "Down",
                "Html",
                .product(name: "Parsing", package: "swift-parsing")
            ]),
        .testTarget(
            name: "SongsToTheSirenTests",
            dependencies: ["SongsToTheSiren"]),
    ]
)
