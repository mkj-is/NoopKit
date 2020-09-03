import XCTest
import NoopKit

final class NoopTests: XCTestCase {
    func testResult() {
        XCTAssertTrue(noop(()) == ())
        XCTAssertTrue(noop((), ()) == ())
        XCTAssertTrue(noop((), (), ()) == ())
        XCTAssertTrue(noop((), (), (), ()) == ())
        XCTAssertTrue(noop((), (), (), (), ()) == ())
    }

    func testCompletions() {
        let completions = Completions()

        completions.function(with: noop)
        completions.functionTwo(with: noop)
        completions.functionThree(with: noop)
    }

    func testClosurePerformace() {
        let completions = Completions()
        measure {
            for _ in 0..<100_000 {
                completions.function(with: noop)
                completions.functionTwo(with: noop)
                completions.functionThree(with: noop)
            }
        }
    }

    func testNamedFunctionPerformace() {
        let completions = Completions()
        measure {
            for _ in 0..<100_000 {
                completions.function {}
                completions.functionTwo { _ in }
                completions.functionThree { _, _ in }
            }
        }
    }

    static var allTests = [
        ("testResult", testResult),
        ("testCompletions", testCompletions)
    ]
}
