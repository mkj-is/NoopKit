import XCTest

import NoopKitTests

var tests = [XCTestCaseEntry]()
tests += NoopTests.allTests()
tests += ConstTests.allTests()
tests += IdTests.allTests()
XCTMain(tests)
