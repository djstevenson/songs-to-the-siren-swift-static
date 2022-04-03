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
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "1.1.1")),
        .package(url: "https://github.com/johnxnguyen/Down",            .upToNextMinor(from: "0.11.0")),
        .package(url: "https://github.com/pointfreeco/swift-html",      .upToNextMinor(from: "0.4.0")),
        .package(url: "https://github.com/pointfreeco/swift-parsing",   .upToNextMinor(from: "0.8.0"))
    ],
    targets: [
        .target(
            name: "SongsToTheSiren",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Down",           package: "Down"),
                .product(name: "Html",           package: "swift-html"),
                .product(name: "Parsing",        package: "swift-parsing")
            ]),
        .testTarget(
            name: "SongsToTheSirenTests",
            dependencies: ["SongsToTheSiren"]),
    ]
)
