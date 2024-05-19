# collections

## About 

A repository featuring a variety of Last-In-First-Out (LIFO) data structures, offering efficient methods for handling and manipulating data with LIFO behavior.

## Purpose

The primary goal of `collections` framework is to provide a robust and efficient implementation of a stack, a fundamental data structure, and its variations. This can be used in various applications where LIFO access to elements is required, such as algorithm implementations and more.

## Software requirements

To run the code you need Swift version `5.10` or later, Xcode version `15.3` or later.

## Versioning

This project uses [Semantic Versioning 2.0.0](https://semver.org/).

## Installation

To install the framework:

1. Download the release of the `collections.xcframework` from the GitHub releases page.
1. Add `collections.xcframework` to your project (select the `Do Not Embed` option).

## Usage examples

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
