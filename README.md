# TreeSitterLanguages

Tree-sitter language parsers wrapped as Swift packages for use with the tree-sitter C API.

[![CI](https://github.com/blaineam/TreeSitterLanguages/actions/workflows/ci.yml/badge.svg)](https://github.com/blaineam/TreeSitterLanguages/actions/workflows/ci.yml)

## Supported Languages (38 total)

| Language | Parser | Queries |
|----------|--------|---------|
| Astro | TreeSitterAstro | TreeSitterAstroQueries |
| Bash | TreeSitterBash | TreeSitterBashQueries |
| C | TreeSitterC | TreeSitterCQueries |
| C++ | TreeSitterCPP | TreeSitterCPPQueries |
| C# | TreeSitterCSharp | TreeSitterCSharpQueries |
| Comment | TreeSitterComment | TreeSitterCommentQueries |
| CSS | TreeSitterCSS | TreeSitterCSSQueries |
| Elixir | TreeSitterElixir | TreeSitterElixirQueries |
| Elm | TreeSitterElm | TreeSitterElmQueries |
| Go | TreeSitterGo | TreeSitterGoQueries |
| Haskell | TreeSitterHaskell | TreeSitterHaskellQueries |
| HTML | TreeSitterHTML | TreeSitterHTMLQueries |
| Java | TreeSitterJava | TreeSitterJavaQueries |
| JavaScript | TreeSitterJavaScript | TreeSitterJavaScriptQueries |
| JSDoc | TreeSitterJSDoc | TreeSitterJSDocQueries |
| JSON | TreeSitterJSON | TreeSitterJSONQueries |
| JSON5 | TreeSitterJSON5 | TreeSitterJSON5Queries |
| Julia | TreeSitterJulia | TreeSitterJuliaQueries |
| LaTeX | TreeSitterLaTeX | TreeSitterLaTeXQueries |
| Lua | TreeSitterLua | TreeSitterLuaQueries |
| Markdown | TreeSitterMarkdown | TreeSitterMarkdownQueries |
| Markdown (Inline) | TreeSitterMarkdownInline | TreeSitterMarkdownInlineQueries |
| OCaml | TreeSitterOCaml | TreeSitterOCamlQueries |
| Perl | TreeSitterPerl | TreeSitterPerlQueries |
| PHP | TreeSitterPHP | TreeSitterPHPQueries |
| Python | TreeSitterPython | TreeSitterPythonQueries |
| R | TreeSitterR | TreeSitterRQueries |
| Regex | TreeSitterRegex | TreeSitterRegexQueries |
| Ruby | TreeSitterRuby | TreeSitterRubyQueries |
| Rust | TreeSitterRust | TreeSitterRustQueries |
| SCSS | TreeSitterSCSS | TreeSitterSCSSQueries |
| SQL | TreeSitterSQL | TreeSitterSQLQueries |
| Svelte | TreeSitterSvelte | TreeSitterSvelteQueries |
| Swift | TreeSitterSwift | TreeSitterSwiftQueries |
| TOML | TreeSitterTOML | TreeSitterTOMLQueries |
| TSX | TreeSitterTSX | TreeSitterTSXQueries |
| TypeScript | TreeSitterTypeScript | TreeSitterTypeScriptQueries |
| YAML | TreeSitterYAML | TreeSitterYAMLQueries |

## Installation

Add this package to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/blaineam/TreeSitterLanguages", from: "2.0.0"),
]
```

Then add the language parsers you need as dependencies:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "TreeSitterSwift", package: "TreeSitterLanguages"),
        .product(name: "TreeSitterSwiftQueries", package: "TreeSitterLanguages"),
        .product(name: "TreeSitterPython", package: "TreeSitterLanguages"),
        .product(name: "TreeSitterPythonQueries", package: "TreeSitterLanguages"),
        // Add more languages as needed
    ]
)
```

## Usage

Each language module exports a `tree_sitter_<language>()` function that returns the language grammar for use with tree-sitter:

```swift
import TreeSitterSwift

let language = tree_sitter_swift()
```

Each query module provides bundled `.scm` query files for syntax highlighting and other features:

```swift
import TreeSitterSwiftQueries

// Access highlight queries from the bundle
if let url = Bundle.module.url(forResource: "highlights", withExtension: "scm") {
    let query = try String(contentsOf: url)
}
```

## Requirements

- iOS 14.0+
- macOS 11.0+
- Swift 5.9+

## Acknowledgements

This package contains parser code from various tree-sitter grammar repositories. See individual language directories for specific attributions.

Originally forked from [simonbs/TreeSitterLanguages](https://github.com/simonbs/TreeSitterLanguages).

## License

MIT License - See LICENSE file for details.
