import XCTest
import collections

final class StackWithVariousGenericParameterTests: XCTestCase {
    func testCreatesStackWithDifferentTypes() {
        // Given
        let _ = Stack<Int>()
        let _ = Stack<Double>()
        let _ = Stack<String>()
    }
}
