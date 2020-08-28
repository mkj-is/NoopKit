struct Completions {
    func function(with completion: () -> Void) {
        completion()
    }

    func functionTwo(with completion: (Int) -> Void) {
        completion(.random(in: 0...100))
    }

    func functionThree(with completion: (Int, String) -> Void) {
        completion(.random(in: 0...100), "abc")
    }
}
