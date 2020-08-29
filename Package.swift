// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "NoopKit",
    products: [
        .library(
            name: "NoopKit",
            targets: ["NoopKit"])
    ],
    targets: [
        .target(
            name: "NoopKit",
            dependencies: []),
        .testTarget(
            name: "NoopKitTests",
            dependencies: ["NoopKit"])
    ]
)
