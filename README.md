# collections

## About 

The `collections` framework featuring Last-In-First-Out (LIFO) `Stack` and `StackStatistics` data structures, offering various methods for handling and manipulating data with LIFO behavior.

## Software requirements

To run the code you need Swift version `5.10` or later, Xcode version `15.3` or later.

## Versioning

This project uses [Semantic Versioning 2.0.0](https://semver.org/).

## Installation

### Install the framework:

1. Download the release of the `collections.xcframework` from the GitHub releases page.
1. Add `collections.xcframework` to your project (select the `Do Not Embed` option).

### Build `.xcframework` by yourself:

If you want to build the binary `.xcframework` file by yourself, run the `generate-xcframework.sh` script in a [scripts](./scripts/) folder or follow [instructions](https://developer.apple.com/documentation/xcode/creating-a-multi-platform-binary-framework-bundle#Create-archives-for-frameworks-or-libraries) provided by Apple.

## Usage examples

### `Stack`

```swift
var stack = Stack<Int>()
stack.push(10)
stack.push(20)
print(stack.top())    // Output: 20
print(stack.pop())    // Output: 20
print(stack.isEmpty)  // Output: false
```

### `StackStatistics`

```swift
var statStack = StackStatistics<Int>()
statStack.push(10)
statStack.push(5)
statStack.push(20)
print(statStack.minimum)  // Output: 5
print(statStack.pop())    // Output: 20
print(statStack.minimum)  // Output: 5
```
## Contributing

Contributions are welcome! Please read the [`CONTRIBUTING.md`](./CONTRIBUTING.md) file for guidelines on how to contribute to this project.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact Information

For further assistance please contact:

- Email: auhustsinovich.d@gmail.com
