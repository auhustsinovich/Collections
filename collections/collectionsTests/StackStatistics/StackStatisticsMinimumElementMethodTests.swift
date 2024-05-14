import XCTest
import collections

final class StackStatisticsMinimumElementMethodTests: XCTestCase {
    override func setUp() {
        stack = StackStatistics<Int>()
    }

    func testMinimumReturnsNilWhenStackIsEmpty() {
        // Given empty stack

        // When, Then
        XCTAssertNil(stack.minimum)
    }

    func testMinimumReturnsTheMinimumElementInStackWithOneElement() {
        // Given
        let elementToAdd = 1
        stack.push(elementToAdd)

        // When, Then
        XCTAssertEqual(stack.minimum, elementToAdd)
    }

    func testMinimumReturnsTheMinimumElementInStackWithMultipleElements() {
        // Given
        for value in 1...10 {
            stack.push(value)
        }

        // When, Then
        XCTAssertEqual(stack.minimum, 1)
    }

    func testMinimumReturnsTheMinimumElementInStackWithEqualElements() {
        // Given
        let firstEqualElementToAdd = 1
        let secondEqualElementToAdd = firstEqualElementToAdd
        stack.push(firstEqualElementToAdd)
        stack.push(secondEqualElementToAdd)

        // When, Then
        XCTAssertEqual(stack.minimum, firstEqualElementToAdd)
    }

    func testMinimumReturnsTheMinimumElementAfterThePop() {
        // Given
        let firstMinimum = 2
        let secondMinimum = 0
        stack.push(firstMinimum)
        stack.push(secondMinimum)

        // When
        stack.pop()

        // Then
        XCTAssertEqual(stack.minimum, firstMinimum)
    }

    private var stack = StackStatistics<Int>()
}
