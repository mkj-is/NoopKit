// Generated using Sourcery 1.0.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

/// Higher-order function returning function which returns
/// constant value.
///
/// - Parameter value: Constant value which will be returned.
/// - Returns: Closure throwing away all passed parameters
///            and returning passed value.
@inlinable
public func const<T>(
    _ value: T
) -> () -> T {
    {
        value
    }
}

/// Higher-order function returning function which returns
/// constant value.
///
/// - Parameter value: Constant value which will be returned.
/// - Returns: Closure throwing away all passed parameters
///            and returning passed value.
@inlinable
public func const<P1, T>(
    _ value: T
) -> (P1) -> T {
    { _ in
        value
    }
}

/// Higher-order function returning function which returns
/// constant value.
///
/// - Parameter value: Constant value which will be returned.
/// - Returns: Closure throwing away all passed parameters
///            and returning passed value.
@inlinable
public func const<P1, P2, T>(
    _ value: T
) -> (P1, P2) -> T {
    { _, _ in
        value
    }
}

/// Higher-order function returning function which returns
/// constant value.
///
/// - Parameter value: Constant value which will be returned.
/// - Returns: Closure throwing away all passed parameters
///            and returning passed value.
@inlinable
public func const<P1, P2, P3, T>(
    _ value: T
) -> (P1, P2, P3) -> T {
    { _, _, _ in
        value
    }
}

/// Higher-order function returning function which returns
/// constant value.
///
/// - Parameter value: Constant value which will be returned.
/// - Returns: Closure throwing away all passed parameters
///            and returning passed value.
@inlinable
public func const<P1, P2, P3, P4, T>(
    _ value: T
) -> (P1, P2, P3, P4) -> T {
    { _, _, _, _ in
        value
    }
}

/// Higher-order function returning function which returns
/// constant value.
///
/// - Parameter value: Constant value which will be returned.
/// - Returns: Closure throwing away all passed parameters
///            and returning passed value.
@inlinable
public func const<P1, P2, P3, P4, P5, T>(
    _ value: T
) -> (P1, P2, P3, P4, P5) -> T {
    { _, _, _, _, _ in
        value
    }
}

