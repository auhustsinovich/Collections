/// An abstract data type that serves as a Last-In-First-Out (LIFO) collection of elements, see
/// [Stack (Wiki page)](https://en.wikipedia.org/wiki/Stack_(abstract_data_type)).
/// That means the last added element will be removed first.
/// Adding (push) and removing (pop) operations occur only at one end of the stack, referred to as the `top` of the stack.
///
/// The type has four main operations:
/// - `push`, which adds an element to the collection.
/// - `pop`, which removes and returns the most recently added element.
/// - `top`, which returns the most recently added element without removing it.
/// - `minimum`, which allows effective finding the minimum in the collection of elements.
public struct StackStatistics<Element: Comparable> {
    private var elements: Stack<Element>
    private var minimumElements: Stack<Element>

    /// Creates a new instance of the `StackStatistics` with initial elements.
    /// - Parameter elements: Elements to store in the stack.
    /// The initial elements to be added to the stack
    /// in the order they appear in the array.
    public init(_ elements: [Element] = []) {
        self.elements = Stack()
        minimumElements = Stack()

        elements.forEach { push($0) }
    }

    /// The minimum element in the stack.
    /// - Returns: The minimum element in the stack. If the stack is empty, returns `nil`.
    public var minimum: Element? {
        minimumElements.top()
    }

    /// A boolean value indicating whether the stack is empty.
    public var isEmpty: Bool {
        elements.isEmpty
    }

    /// The number of elements in the stack.
    public var count: Int {
        elements.count
    }

    /// Adds a new element to the `top` of the stack.
    ///
    /// - Parameter element: The element to be added.
    ///
    /// - Complexity: O(1) on average; In the worst case O(`N`) where `N` is the number of elements in the stack.
    public mutating func push(_ element: Element) {
        elements.push(element)

        let currentMinimum = minimumElements.top() ?? element
        let newMinimum = min(currentMinimum, element)
        minimumElements.push(newMinimum)
    }

    /// Removes and returns the element at the `top` of the stack.
    ///
    /// - Returns: The removed element, or `nil` if the stack is empty.
    ///
    /// - Complexity: O(1).
    public mutating func pop() -> Element? {
        minimumElements.pop()
        return elements.pop()
    }

    /// Returns the element at the top of the stack (the most recently added element) without removing it.
    ///
    /// - Returns: The element at the top of the stack, or `nil` if the stack is empty.
    ///
    /// - Complexity: O(1).
    public func top() -> Element? {
        elements.top()
    }
}
