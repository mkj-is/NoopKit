struct Completions {
    func run(with completion: () -> Void) {
        completion()
    }

    func runTwo(with completion: (Int) -> Void) {
        completion(.random(in: 0...100))
    }

    func runThree(with completion: (Int, String) -> Void) {
        completion(.random(in: 0...100), "abc")
    }

    @discardableResult
    func runFour(with completion: () -> Bool) -> Bool {
        completion()
    }

    @discardableResult
    func runFive(with completion: (Int) -> Bool) -> Bool {
        completion(.random(in: 0...100))
    }

    @discardableResult
    func runSix(with completion: (Int, String) -> Bool) -> Bool {
        completion(.random(in: 0...100), "abc")
    }
}
