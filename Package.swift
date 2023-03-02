// swift-tools-version: 5.0

import PackageDescription

let package = Package(
    name: "QuickSwiftUI",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "QuickSwiftUI",
            targets: ["QuickSwiftUI"]),
    ],
    targets: [
        .target(
            name: "QuickSwiftUI",
            dependencies: [])
    ]
)
