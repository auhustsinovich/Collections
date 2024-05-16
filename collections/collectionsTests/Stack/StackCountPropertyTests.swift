import collections
import XCTest

final class StackCountPropertyTests: XCTestCase {
    func testCountReturnsZeroWhenStackContainsNoElements() {
        // Given empty stack

        // When, Then
        XCTAssertEqual(stack.count, 0)
    }

    func testCountReturnsOneWhenStackHasOneElement() {
        // Given
        stack.push(1)

        // When, Then
        XCTAssertEqual(stack.count, 1)
    }

    func testCountReturnsOneHundredWhenStackContainsOneHundredElements() {
        // Given
        let numberOfElementsToAdd = 100
        let stackSizeBeforePush = stack.count
        let expectedStackSizeAfterPush = stackSizeBeforePush + numberOfElementsToAdd

        for value in 1...numberOfElementsToAdd {
            stack.push(value)
        }

        // When, Then
        XCTAssertEqual(stack.count, expectedStackSizeAfterPush)
    }

    private var stack = Stack<Int>()
}
