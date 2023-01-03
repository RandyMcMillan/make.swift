// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//REF: https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode

import PackageDescription

let package = Package(
    name: "my-app",
    platforms: [
        .macOS(.v10_14), .iOS(.v13), .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "my-app.swift",
            targets: ["my-app"])////, "SomeRemoteBinaryPackage", "SomeLocalBinaryPackage"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: "https://github.com/RandyMcMillan/my-library.git", .branch("master")),
        .package(url: "my-library/.git", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "my-app",
            exclude: ["instructions.md"],
            resources: [
                .process("text.txt"),
                .process("example.png"),
                .copy("settings.plist")
            ]
        ),
        //.binaryTarget(
        //    name: "SomeRemoteBinaryPackage",
        //    url: "https://url/to/some/remote/binary/package.zip",
        //    checksum: "The checksum of the XCFramework inside the ZIP archive."
        //),
        //.binaryTarget(
        //    name: "SomeLocalBinaryPackage",
        //    path: "path/to/some.xcframework"
        //)
        .testTarget(
             name: "my-appTests",
             dependencies: ["my-app"]),
    ]
)
