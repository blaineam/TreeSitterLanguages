// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TreeSitterLanguages",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(name: "TreeSitterBash", targets: ["TreeSitterBash"]),
        .library(name: "TreeSitterC", targets: ["TreeSitterC"]),
        .library(name: "TreeSitterCPP", targets: ["TreeSitterCPP"]),
        .library(name: "TreeSitterCSS", targets: ["TreeSitterCSS"]),
        .library(name: "TreeSitterGo", targets: ["TreeSitterGo"]),
        .library(name: "TreeSitterHTML", targets: ["TreeSitterHTML"]),
        .library(name: "TreeSitterJavaScript", targets: ["TreeSitterJavaScript"]),
        .library(name: "TreeSitterJSON", targets: ["TreeSitterJSON"]),
        .library(name: "TreeSitterMarkdown", targets: ["TreeSitterMarkdown"]),
        .library(name: "TreeSitterPython", targets: ["TreeSitterPython"]),
        .library(name: "TreeSitterRuby", targets: ["TreeSitterRuby"]),
        .library(name: "TreeSitterRust", targets: ["TreeSitterRust"]),
        .library(name: "TreeSitterSwift", targets: ["TreeSitterSwift"]),
        .library(name: "TreeSitterTypeScript", targets: ["TreeSitterTypeScript"]),
        .library(name: "TreeSitterYAML", targets: ["TreeSitterYAML"]),
    ],
    targets: [
        .target(name: "TreeSitterBash", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterC", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterCPP", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterCSS", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterGo", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterHTML", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterJavaScript", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterJSON", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterMarkdown", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterPython", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterRuby", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterRust", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterSwift", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterTypeScript", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterYAML", exclude: ["src/schema.generated.cc"], cSettings: [.headerSearchPath("src")]),
    ]
)
