// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SparkTheming",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SparkTheming",
            targets: ["Theming"]
        ),
        .library(
            name: "SparkThemingTesting",
            targets: ["Testing"]
        ),
        .library(
            name: "SparkTheme",
            targets: ["Theme"]
        ),
    ],
    targets: [
        .target(
            name: "Theming"
        ),
        .target(
            name: "Testing",
            dependencies: [
                "Theming"
            ]
        ),
        .target(
            name: "Theme",
            dependencies: [
                "Theming"
            ],
            resources: [
                .process("Resources/")
            ]
        ),
        .testTarget(
            name: "ThemeTests",
            dependencies: [
                "Theme",
                "Theming",
                "Testing"
            ]
        ),
    ]
)
