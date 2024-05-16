import collections
import XCTest

final class StackStatisticsWithVariousGenericParameterTests: XCTestCase {
    func testCreatesStackWithDifferentTypes() {
        // Given
        _ = StackStatistics<Int>()
        _ = StackStatistics<Double>()
        _ = StackStatistics<String>()
    }
}
