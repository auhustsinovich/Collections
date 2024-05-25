// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Collections",
    platforms: [
        .macOS(.v10_13), .iOS(.v12),
    ],
    products: [
        .library(
            name: "Collections",
            type: .static,
            targets: ["Collections"]
        ),
    ],
    targets: [
        .target(
            name: "Collections",
            path: "Collections/Collections/"
        ),
        .testTarget(
            name: "CollectionTests",
            dependencies: ["Collections"],
            path: "Collections/CollectionsTests/"
        ),
    ]
)
