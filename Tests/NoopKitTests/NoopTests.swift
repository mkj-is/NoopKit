import XCTest
import NoopKit

final class NoopTests: XCTestCase {
    func testNoopCall() {
        XCTAssertTrue(noop(()) == ())
        XCTAssertTrue(noop((), ()) == ())
        XCTAssertTrue(noop((), (), ()) == ())
        XCTAssertTrue(noop((), (), (), ()) == ())
        XCTAssertTrue(noop((), (), (), (), ()) == ())
    }

    static var allTests = [
        ("testNoopCall", testNoopCall),
    ]
}
