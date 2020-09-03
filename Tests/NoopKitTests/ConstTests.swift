import XCTest
import NoopKit

final class ConstTests: XCTestCase {
    func testResult() {
        XCTAssertTrue(const(())() == ())

        let n = Int.random(in: 0...100)
        XCTAssertTrue(const(n)() == n)
    }

    func testHigherOrderFunctions() {
        XCTAssertEqual([1, 2, 3].map(const(5)), Array(repeating: 5, count: 3))

        let optional: Int? = 1
        XCTAssertEqual(optional.map(const(5)), 5)
        XCTAssertEqual(optional.flatMap(const(5)), 5)
    }

    func testClosurePerformance() {
        let completions = Completions()
        measure {
            for _ in 0..<100_000 {
                completions.runFour(with: { true })
                completions.runFive(with: { _ in true })
                completions.runSix(with: { _, _ in true })
            }
        }
    }

    func testNamedFunctionPerformance() {
        let completions = Completions()
        measure {
            for _ in 0..<100_000 {
                completions.runFour(with: const(true))
                completions.runFive(with: const(false))
                completions.runSix(with: const(true))
            }
        }
    }

    static var allTests = [
        ("testResult", testResult),
        ("testHigherOrderFunctions", testHigherOrderFunctions)
    ]
}
