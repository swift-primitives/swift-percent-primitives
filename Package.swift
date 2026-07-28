// swift-tools-version: 6.3.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

extension String {
    static let percent: Self = "Percent"
}

extension Target.Dependency {
    static var percent: Self { .target(name: .percent) }
}

import PackageDescription

let package = Package(
    name: "swift-percent-primitives",
    products: [
        .library(
            name: .percent,
            targets: [.percent])
    ],
    targets: [
        .target(
            name: .percent,
            dependencies: []
        ),
        .testTarget(
            name: "PercentTests",
            dependencies: [.percent]
        )
    ]
)
