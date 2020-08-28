import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(NoopTests.allTests),
        testCase(ConstTests.allTests),
        testCase(IdTests.allTests),
    ]
}
#endif
