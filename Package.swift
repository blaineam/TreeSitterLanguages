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
        // Language parsers
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
        // Query libraries (highlight queries)
        .library(name: "TreeSitterBashQueries", targets: ["TreeSitterBashQueries"]),
        .library(name: "TreeSitterCQueries", targets: ["TreeSitterCQueries"]),
        .library(name: "TreeSitterCPPQueries", targets: ["TreeSitterCPPQueries"]),
        .library(name: "TreeSitterCSSQueries", targets: ["TreeSitterCSSQueries"]),
        .library(name: "TreeSitterGoQueries", targets: ["TreeSitterGoQueries"]),
        .library(name: "TreeSitterHTMLQueries", targets: ["TreeSitterHTMLQueries"]),
        .library(name: "TreeSitterJavaScriptQueries", targets: ["TreeSitterJavaScriptQueries"]),
        .library(name: "TreeSitterJSONQueries", targets: ["TreeSitterJSONQueries"]),
        .library(name: "TreeSitterMarkdownQueries", targets: ["TreeSitterMarkdownQueries"]),
        .library(name: "TreeSitterPythonQueries", targets: ["TreeSitterPythonQueries"]),
        .library(name: "TreeSitterRubyQueries", targets: ["TreeSitterRubyQueries"]),
        .library(name: "TreeSitterRustQueries", targets: ["TreeSitterRustQueries"]),
        .library(name: "TreeSitterSwiftQueries", targets: ["TreeSitterSwiftQueries"]),
        .library(name: "TreeSitterTypeScriptQueries", targets: ["TreeSitterTypeScriptQueries"]),
        .library(name: "TreeSitterYAMLQueries", targets: ["TreeSitterYAMLQueries"]),
    ],
    targets: [
        // Language parser targets
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
        // Query targets (provide .scm highlight query files)
        .target(name: "TreeSitterBashQueries", resources: [.process("highlights.scm")]),
        .target(name: "TreeSitterCQueries", resources: [.process("highlights.scm")]),
        .target(name: "TreeSitterCPPQueries", resources: [.process("highlights.scm")]),
        .target(name: "TreeSitterCSSQueries", resources: [.process("highlights.scm")]),
        .target(name: "TreeSitterGoQueries", resources: [.process("highlights.scm"), .process("tags.scm")]),
        .target(name: "TreeSitterHTMLQueries", resources: [.process("highlights.scm"), .process("injections.scm")]),
        .target(name: "TreeSitterJavaScriptQueries", resources: [.process("highlights.scm"), .process("highlights-jsx.scm"), .process("highlights-params.scm"), .process("injections.scm"), .process("locals.scm"), .process("tags.scm")]),
        .target(name: "TreeSitterJSONQueries", resources: [.process("highlights.scm")]),
        .target(name: "TreeSitterMarkdownQueries", resources: [.process("highlights.scm"), .process("injections.scm")]),
        .target(name: "TreeSitterPythonQueries", resources: [.process("highlights.scm"), .process("tags.scm")]),
        .target(name: "TreeSitterRubyQueries", resources: [.process("highlights.scm"), .process("locals.scm"), .process("tags.scm")]),
        .target(name: "TreeSitterRustQueries", resources: [.process("highlights.scm"), .process("injections.scm")]),
        .target(name: "TreeSitterSwiftQueries", resources: [.process("highlights.scm"), .process("locals.scm")]),
        .target(name: "TreeSitterTypeScriptQueries", resources: [.process("highlights.scm"), .process("locals.scm"), .process("tags.scm")]),
        .target(name: "TreeSitterYAMLQueries", resources: [.process("highlights.scm")]),
    ]
)
