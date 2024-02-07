// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// TODO: do we need Common ???
// TODO: found a better name than SparkThemingTesting

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
    dependencies: [
        // Git
//        .package(
//            url: "https://github.com/robergro/spm-poc-theming.git",
//            from: "1.0.0"
//        ),

        // Local
        .package(
            path: "../spm-poc-common"
        )
    ],
    targets: [
        .target(
            name: "Theming",
            dependencies: [
                .product(
                    name: "SparkCommon",
                    package: "spm-poc-common"
                )
            ]
        ),
        .target(
            name: "Testing",
            dependencies: [
                "Theming",
                .product(
                    name: "SparkCommon",
                    package: "spm-poc-common"
                )
            ]
        ),
        .target(
            name: "Theme",
            dependencies: [
                "Theming",
                .product(
                    name: "SparkCommon",
                    package: "spm-poc-common"
                )
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
                "Testing",
                .product(
                    name: "SparkCommonMock",
                    package: "spm-poc-common"
                )
            ]
        ),
    ]
)
