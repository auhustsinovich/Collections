import Collections
import XCTest

final class StackStatisticsWithGenericParameterTests: XCTestCase {
    func testCreatesStackWithDifferentTypes() {
        _ = StackStatistics<Int>()
        _ = StackStatistics<Double>()
        _ = StackStatistics<String>()
    }
}
