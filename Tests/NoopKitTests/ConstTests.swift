import XCTest
import NoopKit

final class ConstTests: XCTestCase {
    func testResult() {
        let f: (Void, Void) -> Void = const(())
        XCTAssertTrue(f((), ()) == ())

        let n = Int.random(in: 0...100)
        let f2: () -> Int = const(n)
        XCTAssertTrue(f2() == n)
    }

    func testHigherOrderFunctions() {
        XCTAssertEqual([1, 2, 3].map(const(5)), Array(repeating: 5, count: 3))

        let optional: Int? = 1
        XCTAssertEqual(optional.map(const(5)), 5)
        XCTAssertEqual(optional.flatMap(const(5)), 5)
    }

    func testConstClosurePerformance() {
        let completions = Completions()
        measure {
            for _ in 0..<100_000 {
                completions.runFour(with: { true })
                completions.runFive(with: { _ in true })
                completions.runSix(with: { _, _ in true })
            }
        }
    }

    func testConstNamedFunctionPerformance() {
        let completions = Completions()
        measure {
            for _ in 0..<100_000 {
                completions.runFour(with: const(true))
                completions.runFive(with: const(false))
                completions.runSix(with: const(true))
            }
        }
    }
}
