// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "VaporMakeup",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "VaporMakeup",
            targets: ["VaporMakeup"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/MakeupStudio/Makeup.git",
            .branch("master")
        ),
        .package(
            url: "https://github.com/vapor/vapor.git",
            from: "4.0.0"
        ),
    ],
    targets: [
        .target(
            name: "VaporMakeup",
            dependencies: [
                .product(name: "Makeup", package: "Makeup"),
                .product(name: "Vapor", package: "vapor")
            ]
        ),
        .testTarget(
            name: "VaporMakeupTests",
            dependencies: [.target(name: "VaporMakeup")]),
    ]
)
