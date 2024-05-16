import collections
import XCTest

final class StackPushMethodTests: XCTestCase {
    func testPushAddsOneElementWhenPushCalledOneTime() {
        // Given
        let stackSizeBeforePush = stack.count
        let expectedStackSizeAfterPush = stackSizeBeforePush + 1

        // When
        stack.push(1)

        // Then
        XCTAssertEqual(stack.count, expectedStackSizeAfterPush)
    }

    func testPushAddsHundredElementsWhenPushCalledHundredTimes() {
        // Given
        let stackSizeBeforePush = stack.count
        let numberOfElementsToAdd = 100
        let expectedStackSizeAfterPush = stackSizeBeforePush + numberOfElementsToAdd

        // When
        for value in 1...numberOfElementsToAdd {
            stack.push(value)
        }

        // Then
        XCTAssertEqual(stack.count, expectedStackSizeAfterPush)
    }

    private var stack = Stack<Int>()
}
