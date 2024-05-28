# `Collections` framework for iOS/macOS


## About

The `Collections` framework provides `Stack` and `StackStatistics` data structures. These structures offer methods for handling and manipulating data with Last-In-First-Out (LIFO) behavior, see [Stack (Wiki page)](https://en.wikipedia.org/wiki/Stack_(abstract_data_type)).

### `Stack` has three main operations:

- `push`, which adds an element to the collection.
- `pop`, which removes and returns the most recently added element.
- `top`, which returns the most recently added element without removing it.

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

You have several options to integrate `Collections` into your project:

### Swift Package Manager

The `Collections` framework supports installation via [Swift Package Manager](https://swift.org/package-manager/) (SPM) from version `0.3.0`. 

#### Adding `Collections` as a dependency in your Xcode project

1. Open your Xcode project.
1. Select "File" → "Add Package Dependencies...".
1. In the search bar enter the URL of the `Collections` repository: `https://github.com/auhustsinovich/Collections`.
1. Choose the dependency rule (e.g., "Up to Next Major" with the current version) and add the package.

#### Adding `Collections` to your `Package.swift`

To add `Collections` to your Swift package, include it in the `dependencies` array of your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/auhustsinovich/Collections", from: "<version>")
]
```

### Download the binary

1. Download the release of the `Collections.xcframework` from the `Collections` [releases page](https://github.com/auhustsinovich/Collections/releases).
1. Add `Collections.xcframework` to your project (The `Do Not Embed` is the recommended option).

### Build `.xcframework` by yourself

To build the binary `.xcframework`, run the `generate-xcframework.sh` script in the [scripts](./scripts/) folder:

```bash
chmod u+x ./scripts/generate-xcframework.sh
./scripts/generate-xcframework.sh
```
or follow [instructions](https://developer.apple.com/documentation/xcode/creating-a-multi-platform-binary-framework-bundle#Create-archives-for-frameworks-or-libraries) provided by Apple.

The generated binary files will be saved in the `generate` folder located in the root directory of the `Collections` project.

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
