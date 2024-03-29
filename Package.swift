// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "YUDisplacementTransition",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "YUDisplacementTransition",
            targets: ["YUDisplacementTransition"]),
    ],
    dependencies: [
        .package(name: "MetalPetal", url: "https://github.com/MetalPetal/MetalPetal.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "YUDisplacementTransition",
            dependencies: ["MetalPetal"],
            path: "Sources",
            resources: [
                .process("Assets")
            ]),
        .testTarget(
            name: "YUDisplacementTransitionTests",
            dependencies: ["YUDisplacementTransition"],
            path: "Tests")
    ],
    swiftLanguageVersions: [.v5]
)
