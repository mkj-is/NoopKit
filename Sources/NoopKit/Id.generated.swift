// Generated using Sourcery 2.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
#if(swift(<5.9))

/// Function used for passing to higher-order functions.
/// It returns all the passed parameters as a tuple.
///
/// Parameters:
/// - Parameter _: Parameter will be returned in a tuple.
@inlinable
public func id<P1>(
    _ p1: P1
) -> (P1) {
    (p1)
}

/// Function used for passing to higher-order functions.
/// It returns all the passed parameters as a tuple.
///
/// Parameters:
/// - Parameter _: Parameter will be returned in a tuple.
/// - Parameter _: Parameter will be returned in a tuple.
@inlinable
public func id<P1, P2>(
    _ p1: P1,
    _ p2: P2
) -> (P1, P2) {
    (p1, p2)
}

/// Function used for passing to higher-order functions.
/// It returns all the passed parameters as a tuple.
///
/// Parameters:
/// - Parameter _: Parameter will be returned in a tuple.
/// - Parameter _: Parameter will be returned in a tuple.
/// - Parameter _: Parameter will be returned in a tuple.
@inlinable
public func id<P1, P2, P3>(
    _ p1: P1,
    _ p2: P2,
    _ p3: P3
) -> (P1, P2, P3) {
    (p1, p2, p3)
}

/// Function used for passing to higher-order functions.
/// It returns all the passed parameters as a tuple.
///
/// Parameters:
/// - Parameter _: Parameter will be returned in a tuple.
/// - Parameter _: Parameter will be returned in a tuple.
/// - Parameter _: Parameter will be returned in a tuple.
/// - Parameter _: Parameter will be returned in a tuple.
@inlinable
public func id<P1, P2, P3, P4>(
    _ p1: P1,
    _ p2: P2,
    _ p3: P3,
    _ p4: P4
) -> (P1, P2, P3, P4) {
    (p1, p2, p3, p4)
}

/// Function used for passing to higher-order functions.
/// It returns all the passed parameters as a tuple.
///
/// Parameters:
/// - Parameter _: Parameter will be returned in a tuple.
/// - Parameter _: Parameter will be returned in a tuple.
/// - Parameter _: Parameter will be returned in a tuple.
/// - Parameter _: Parameter will be returned in a tuple.
/// - Parameter _: Parameter will be returned in a tuple.
@inlinable
public func id<P1, P2, P3, P4, P5>(
    _ p1: P1,
    _ p2: P2,
    _ p3: P3,
    _ p4: P4,
    _ p5: P5
) -> (P1, P2, P3, P4, P5) {
    (p1, p2, p3, p4, p5)
}


#endif
