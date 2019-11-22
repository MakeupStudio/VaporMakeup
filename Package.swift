// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporMakeup",
    products: [
        .library(
            name: "VaporMakeup",
            targets: ["VaporMakeup"]),
    ],
    dependencies: [
        .package(url: "https://github.com/MakeupStudio/Makeup.git", from: "0.1.1"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-alpha.2"),
    ],
    targets: [
        .target(
            name: "VaporMakeup",
            dependencies: ["Makeup", "Vapor"]),
        .testTarget(
            name: "VaporMakeupTests",
            dependencies: ["VaporMakeup"]),
    ]
)
