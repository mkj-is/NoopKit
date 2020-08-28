import XCTest

import NoopKitTests

var tests = [XCTestCaseEntry]()
tests += NoopTests.allTests()
tests += IdTests.allTests()
XCTMain(tests)
