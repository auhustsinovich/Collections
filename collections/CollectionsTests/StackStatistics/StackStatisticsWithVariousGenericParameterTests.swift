import collections
import XCTest

final class StackStatisticsWithVariousGenericParameterTests: XCTestCase {
    func testCreatesStackWithDifferentTypes() {
        _ = StackStatistics<Int>()
        _ = StackStatistics<Double>()
        _ = StackStatistics<String>()
    }
}
