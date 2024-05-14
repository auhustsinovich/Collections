import XCTest
import collections

final class StackStatisticsWithVariousGenericParameterTests: XCTestCase {
    func testCreatesStackWithDifferentTypes() {
        // Given
        let _ = StackStatistics<Int>()
        let _ = StackStatistics<Double>()
        let _ = StackStatistics<String>()
    }
}
