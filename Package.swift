// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DTCoreText",
    platforms: [
        .iOS(.v8),         //.v8 - .v13
        .macOS(.v10_10),    //.v10_10 - .v10_15
        .tvOS(.v9),        //.v9 - .v13
    ],
    products: [
        .library(
            name: "DTCoreText",
            targets: ["DTCoreText"]),
    ],
    dependencies: [
        .package(url: "https://github.com/eventfuel/DTFoundation.git", .revision("a2db0ef61d056a06e4a25d1a9022335d60c25a2a")),
    ],
    targets: [
        .target(
            name: "DTCoreText",
            dependencies: [
                .product(name: "DTFoundation", package: "DTFoundation"),
            ],
            path: "Core"),
        .testTarget(
            name: "DTCoreTextTests",
            dependencies: ["DTCoreText"]),
    ]
)
