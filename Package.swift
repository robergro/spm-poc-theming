// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// TODO: manage the linter on the mac and not with the SPM

let package = Package(
    name: "SparkTheming",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SparkTheming",
            targets: ["SparkTheming"]
        ),
        .library(
            name: "SparkThemingTesting",
            targets: ["SparkThemingTesting"]
        ),
        .library(
            name: "SparkTheme",
            targets: ["SparkTheme"]
        ),
    ],
    dependencies: [
        // External
//        .package(
//            url: "https://github.com/realm/SwiftLint",
//            from: "0.54.0"
//        )
    ],
    targets: [
        .target(
            name: "SparkTheming"/*,
            plugins: [
                .plugin(
                    name: "SwiftLintPlugin",
                    package: "SwiftLint"
                )
            ]
                                 */
        ),
        .target(
            name: "SparkThemingTesting",
            dependencies: [
                "SparkTheming"
            ]/*,
            plugins: [
                .plugin(
                    name: "SwiftLintPlugin",
                    package: "SwiftLint"
                )
            ]
              */
        ),
        .target(
            name: "SparkTheme",
            dependencies: [
                "SparkTheming"
            ],
            resources: [
                .process("Resources/")
            ]/*,
            plugins: [
                .plugin(
                    name: "SwiftLintPlugin",
                    package: "SwiftLint"
                )
            ]
              */
        ),
        .testTarget(
            name: "SparkThemeUnitTests",
            dependencies: [
                "SparkTheme",
                "SparkTheming",
                "SparkThemingTesting"
            ]/*,
            plugins: [
                .plugin(
                    name: "SwiftLintPlugin",
                    package: "SwiftLint"
                )
            ]
              */
        ),
    ]
)
