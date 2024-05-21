# `collections` framework for iOS/macOS


## About

The `collections` framework provides `Stack` and `StackStatistics` data structures. These structures offer methods for handling and manipulating data with Last-In-First-Out (LIFO) behavior, see [Stack (Wiki page)](https://en.wikipedia.org/wiki/Stack_(abstract_data_type)).

### `Stack` has three main operations:

- `push`, which adds an element to the collection.
- `pop`, which removes and returns the most recently added element.
- `top`, which returns the most recently added element without removing it.
- `minimum`, which allows effective finding the minimum in the collection of elements.

### `StackStatistics` has four main operations:

- `push`, which adds an element to the collection.
- `pop`, which removes and returns the most recently added element.
- `top`, which returns the most recently added element without removing it.
- `minimum`, which allows effective finding the minimum in the collection of elements.

## Software requirements

The code has been tested with Swift version `5.10` and Xcode version `15.3`. However, you may try running it on different versions as well.

## Versioning

This project uses [Semantic Versioning 2.0.0](https://semver.org/).

## Installation

#### You have two options to choose from:

- ### Download the binary

  1. Download the release of the `collections.xcframework` from the GitHub releases page.
  1. Add `collections.xcframework` to your project (select the `Do Not Embed` option).

- ### Build `.xcframework` by yourself

  To build the binary `.xcframework`, run the `generate-xcframework.sh` script in a [scripts](./scripts/) folder:
  ```bash
  chmod u+x ./scripts/generate-xcframework.sh
  ./scripts/generate-xcframework.sh
  ```
  or follow [instructions](https://developer.apple.com/documentation/xcode/creating-a-multi-platform-binary-framework-bundle#Create-archives-for-frameworks-or-libraries) provided by   Apple.

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
