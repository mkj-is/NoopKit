import XCTest
import NoopKit

final class IdTests: XCTestCase {
    func testResult() {
        XCTAssertTrue(id(()) == ())

        let single = Int.random(in: 0...100)
        XCTAssertTrue(id(single) == single)

        let double = (Int.random(in: 0...100), "abc")
        XCTAssertTrue(id(double) == double)

        let triple = (Int.random(in: 0...100), "abc", Bool.random())
        XCTAssertTrue(id(triple) == triple)
    }

    func testHigherOrderFunctions() {
        let numbers = [1, 2, 3]
        XCTAssertEqual(numbers.map(id), numbers)

        let optionalNumbers = [1, 2, nil, 4, nil]
        XCTAssertEqual(optionalNumbers.compactMap(id), [1, 2, 4])

        let bools = [true, false, true, true, false]
        XCTAssertEqual(bools.filter(id), Array(repeating: true, count: 3))

        let optional: Int? = 1
        XCTAssertEqual(optional.map(id), optional)
        XCTAssertEqual(optional.flatMap(id), optional)
    }

    static var allTests = [
        ("testResult", testResult),
        ("testHigherOrderFunctions", testHigherOrderFunctions)
    ]
}
