import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(NoopTests.allTests),
        testCase(IdTests.allTests),
    ]
}
#endif
