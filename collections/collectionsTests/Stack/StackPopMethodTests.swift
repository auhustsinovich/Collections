import XCTest
import collections

final class StackPopMethodTests: XCTestCase {
    override func setUp() {
        stack = Stack<Int>()
    }

    func testPopReturnsLastAddedElement() {
        // Given
        let elementToAdd = 1
        stack.push(elementToAdd)

        // When, Then
        XCTAssertEqual(stack.pop(), elementToAdd)
    }

    func testPopDeletesLastAddedElement() {
        // Given
        stack.push(1)
        let stackSizeBeforePop = stack.count

        // When
        stack.pop()

        // Then
        XCTAssertEqual(stack.count, stackSizeBeforePop - 1)
    }

    func testPopReturnsAddedElementsInLifoOrder() {
        // Given
        let firstAddedElement = 1
        let lastAddedElement = 2

        stack.push(firstAddedElement)
        stack.push(lastAddedElement)

        // When
        let firstPoppedElement = stack.pop()
        let lastPoppedElement = stack.pop()

        // Then
        XCTAssertEqual(lastAddedElement, firstPoppedElement)
        XCTAssertEqual(firstAddedElement, lastPoppedElement)
    }

    func testPopReturnsNilWhenStackIsEmpty() {
        // Given empty stack

        // When, Then
        XCTAssertNil(stack.pop())
    }

    func testPopDoesNotReturnNilWhenStackIsNotEmpty() {
        // Given
        stack.push(5)

        // When, Then
        XCTAssertNotNil(stack.pop())
    }

    private var stack = Stack<Int>()
}
