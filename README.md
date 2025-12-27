# TreeSitterLanguages

Tree-sitter language parsers wrapped as Swift packages for use with the tree-sitter C API.

## Supported Languages

- Bash
- C
- C++
- CSS
- Go
- HTML
- JavaScript
- JSON
- Markdown
- Python
- Ruby
- Rust
- Swift
- TypeScript
- YAML

## Installation

Add this package to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/blaineam/TreeSitterLanguages", branch: "main"),
]
```

Then add the language parsers you need as dependencies:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "TreeSitterSwift", package: "TreeSitterLanguages"),
        .product(name: "TreeSitterPython", package: "TreeSitterLanguages"),
        // etc.
    ]
)
```

## Usage

Each language module exports a `tree_sitter_<language>()` function that returns the language grammar for use with tree-sitter:

```swift
import TreeSitterSwift

let language = tree_sitter_swift()
```

## Acknowledgements

This package contains parser code from the following tree-sitter grammar repositories:

- [tree-sitter-bash](https://github.com/tree-sitter/tree-sitter-bash)
- [tree-sitter-c](https://github.com/tree-sitter/tree-sitter-c)
- [tree-sitter-cpp](https://github.com/tree-sitter/tree-sitter-cpp)
- [tree-sitter-css](https://github.com/tree-sitter/tree-sitter-css)
- [tree-sitter-go](https://github.com/tree-sitter/tree-sitter-go)
- [tree-sitter-html](https://github.com/tree-sitter/tree-sitter-html)
- [tree-sitter-javascript](https://github.com/tree-sitter/tree-sitter-javascript)
- [tree-sitter-json](https://github.com/tree-sitter/tree-sitter-json)
- [tree-sitter-markdown](https://github.com/MDeiml/tree-sitter-markdown)
- [tree-sitter-python](https://github.com/tree-sitter/tree-sitter-python)
- [tree-sitter-ruby](https://github.com/tree-sitter/tree-sitter-ruby)
- [tree-sitter-rust](https://github.com/tree-sitter/tree-sitter-rust)
- [tree-sitter-swift](https://github.com/alex-pinkus/tree-sitter-swift)
- [tree-sitter-typescript](https://github.com/tree-sitter/tree-sitter-typescript)
- [tree-sitter-yaml](https://github.com/ikatyang/tree-sitter-yaml)

Originally forked from [simonbs/TreeSitterLanguages](https://github.com/simonbs/TreeSitterLanguages).

## License

MIT License - See LICENSE file for details.
