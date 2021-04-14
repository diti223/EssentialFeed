// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EssentialFeed",
    products: [
        .library(
            name: "EssentialFeed",
            targets: ["EssentialFeed"]),
        Product.library(
            name: "CoreTest",
            targets: ["CoreTest"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EssentialFeed",
            dependencies: []),
        .testTarget(
            name: "EssentialFeedTests",
            dependencies: ["EssentialFeed", "CoreTest"],
            path: "./Tests/EssentialFeedTests"),
        .testTarget(
            name: "EssentialFeedAPIEndToEndTests",
            dependencies: ["EssentialFeed", "CoreTest"],
            path: "./Tests/EndToEndTests"
        ),
        .target(
            name: "CoreTest",
            dependencies: [],
            path: "./Tests/CoreTest"
        )
    ]
)
