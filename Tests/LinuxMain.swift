import XCTest

import NoopKitTests

var tests = [XCTestCaseEntry]()
tests += NoopTests.allTests()
XCTMain(tests)
