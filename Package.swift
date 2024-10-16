// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "BezierSwift",
  platforms: [
    .iOS(.v15),
  ],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "BezierSwift",
      targets: ["BezierSwift"]),
    .library(
      name: "LegacyBezierSwift",
      targets: ["LegacyBezierSwift"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/SnapKit/SnapKit", .upToNextMajor(from: "5.0.1")),
    .package(url: "https://github.com/SDWebImage/SDWebImage.git", .upToNextMajor(from: "5.14.2")),
    .package(url: "https://github.com/SDWebImage/SDWebImageSwiftUI.git", from: "3.0.0")
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "BezierSwift",
      dependencies: ["SnapKit", "SDWebImage", "SDWebImageSwiftUI"],
      path: "BezierSwift",
      sources: ["Sources"],
      resources: [.process("Resources")]
    ),
    .target(
      name: "LegacyBezierSwift",
      dependencies: [],
      path: "BezierSwift",
      sources: ["Legacy"]
    ),
    .testTarget(
      name: "BezierSwiftTests",
      dependencies: ["BezierSwift"],
      path: "BezierSwiftTests"
    ),
  ],
  swiftLanguageVersions: [.v5]
)
