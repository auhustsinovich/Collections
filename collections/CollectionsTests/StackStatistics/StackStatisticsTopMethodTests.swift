import Collections
import XCTest

final class StackStatisticsTopMethodTests: XCTestCase {
    func testTopReturnsElementThatWasAdded() {
        // Given
        let elementToAdd = 7
        stack.push(elementToAdd)

        // When, Then
        XCTAssertEqual(stack.top(), elementToAdd)
    }

    func testTopReturnsElementFromTheTopOfStackWithMultipleElements() {
        // Given
        let lastAddedElement = 15
        stack.push(5)
        stack.push(lastAddedElement)

        // When, Then
        XCTAssertEqual(stack.top(), lastAddedElement)
    }

    func testTopDoesNotRemoveElement() {
        // Given
        stack.push(1)
        let stackSizeBeforeTop = stack.count

        // When
        _ = stack.top()
        let expectedStackSizeAfterTop = stack.count

        // Then
        XCTAssertEqual(stackSizeBeforeTop, expectedStackSizeAfterTop)
    }

    func testTopReturnsNilWhenStackIsEmpty() {
        // Given empty stack

        // When, Then
        XCTAssertNil(stack.top())
    }

    func testTopDoesNotReturnNilWhenStackIsNotEmpty() {
        // Given
        stack.push(1)

        // When, Then
        XCTAssertNotNil(stack.top())
    }

    private var stack = StackStatistics<Int>()
}
