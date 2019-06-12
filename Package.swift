// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "R.swift.Library",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(name: "Rswift", targets: ["Rswift"])
    ],
    targets: [
        .target(name: "Rswift", path: "Library")
    ]
)
