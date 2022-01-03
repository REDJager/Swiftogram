// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swiftogram",
    products: [
        .executable(name: "Swiftogram", targets: ["Swiftogram"]),
    ],
    dependencies: [
        .package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git",
                 from: "3.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "Swiftogram",
            dependencies: [.product(name: "PerfectHTTPServer", package: "Perfect-HTTPServer")]),
        .testTarget(
            name: "SwiftogramTests",
            dependencies: ["Swiftogram"]),
    ]
)
