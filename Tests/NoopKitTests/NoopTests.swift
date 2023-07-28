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

        completions.run(with: noop)
        completions.runTwo(with: noop)
        completions.runThree(with: noop)
    }

    func testNoopClosurePerformance() {
        let completions = Completions()
        measure {
            for _ in 0..<100_000 {
                completions.run(with: noop)
                completions.runTwo(with: noop)
                completions.runThree(with: noop)
            }
        }
    }

    func testNoopNamedFunctionPerformance() {
        let completions = Completions()
        measure {
            for _ in 0..<100_000 {
                completions.run {}
                completions.runTwo { _ in }
                completions.runThree { _, _ in }
            }
        }
    }

    static let allTests = [
        ("testResult", testResult),
        ("testCompletions", testCompletions),
        ("testNoopClosurePerformace", testNoopClosurePerformance),
        ("testNoopNamedFunctionPerformance", testNoopNamedFunctionPerformance)
    ]
}
