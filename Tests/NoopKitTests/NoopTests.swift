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

    static var allTests = [
        ("testResult", testResult),
        ("testCompletions", testCompletions)
    ]
}
