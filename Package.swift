// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OrbitSnapshotTesting",
    platforms: [.iOS(.v13)],
    products: [],
    dependencies: [
        .package(
            url: "https://github.com/kiwicom/orbit-swiftui.git",
            revision: ""
        ),
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            from: "1.9.0"
        ),
    ],
    targets: [
        .testTarget(
            name: "SnapshotTests",
            dependencies: [
                .product(name: "Orbit", package: "orbit-swiftui"),
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
            ]
        ),
    ]
)
