
// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "HandzDesignSystem",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "HandzDesignSystem",
            targets: ["HandzDesignSystem"]
        )
    ],
    targets: [
        .target(
            name: "HandzDesignSystem",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "HandzDesignSystemTests",
            dependencies: ["HandzDesignSystem"]
        )
    ]
)
