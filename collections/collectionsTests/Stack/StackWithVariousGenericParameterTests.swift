import collections
import XCTest

final class StackWithVariousGenericParameterTests: XCTestCase {
    func testCreatesStackWithDifferentTypes() {
        _ = Stack<Int>()
        _ = Stack<Double>()
        _ = Stack<String>()
    }
}
