import collections
import XCTest

final class StackStatisticsIsEmptyPropertyTests: XCTestCase {
    override func setUp() {
        stack = StackStatistics<Int>()
    }

    func testIsEmptyReturnsTrueWhenStackHasNoElements() {
        // Given empty stack

        // When, Then
        XCTAssertTrue(stack.isEmpty)
    }

    func testIsEmptyReturnsFalseWhenStackHasOneElement() {
        // Given
        stack.push(1)

        // When, Then
        XCTAssertFalse(stack.isEmpty)
    }

    func testIsEmptyReturnsFalseWhenStackHasMultipleElements() {
        // Given
        for element in 1...6 {
            stack.push(element)
        }

        // When, Then
        XCTAssertFalse(stack.isEmpty)
    }

    private var stack = StackStatistics<Int>()
}
