# collections

## About 

A repository featuring a variety of Last-In-First-Out (LIFO) data structures, offering efficient methods for handling and manipulating data with LIFO behavior.

## Purpose

The primary goal of this framework is to provide a robust and efficient implementation of a stack, a fundamental data structure, and its variations. This can be used in various applications where LIFO access to elements is required, such as algorithm implementations and more.

## Software requirements

- macOS 10.13+ / iOS 12.0+
- Xcode 15.3+
- Swift 5.10+

## Versioning

This project uses [Semantic Versioning](https://semver.org/). The format is `MAJOR.MINOR.PATCH`.

- **MAJOR** version increments indicate breaking changes.
- **MINOR** version increments indicate backward-compatible feature additions.
- **PATCH** version increments indicate backward-compatible bug fixes.

## Installation

To install the framework:

1. Download the latest release version of `collections.xcframework` from this repository.
1. Add `collections.xcframework` to your project(We recommend selecting the `Do Not Embed` option).

## Usage

### `Stack` structure example

```swift
var stack = Stack<Int>()
stack.push(10)
stack.push(20)
print(stack.top())    // Output: 20
print(stack.pop())    // Output: 20
print(stack.isEmpty)  // Output: false
```

### `StackStatistics` structure example

```swift
var statStack = StackStatistics<Int>()
statStack.push(10)
statStack.push(5)
statStack.push(20)
print(statStack.minimum)  // Output: 5
print(statStack.pop())    // Output: 20
print(statStack.minimum)  // Output: 5
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact Information

For further assistance please contact:

- Email: auhustsinovich.d@gmail.com
