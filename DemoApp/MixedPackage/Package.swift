// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MixedPackage",
    products: [
        .library(
            name: "MixedPackage",
            targets: ["ObjcModule"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ObjcModule",
            dependencies: ["SwiftModule"]
        ),
        .target(
            name: "SwiftModule",
            dependencies: []
        ),
    ]
)
