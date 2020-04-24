// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "R.swift.Library",
    platforms: [
		.iOS(.v11),
		.tvOS(.v9),
		.watchOS(.v2),

    ],
    products: [
        .library(name: "Rswift", targets: ["Rswift"]),
        .library(name: "RswiftDynamic", type: .dynamic, targets: ["Rswift"])
    ],
    targets: [
		.target(name: "Rswift", path: "Library")
    ]
)
