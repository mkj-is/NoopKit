
#if(swift(>=5.9))

/// Higher-order function returning function which returns
/// a constant value.
///
/// - Parameter value: Constant value which will be returned.
/// - Returns: Closure throwing away all passed parameters
///            and returning passed value.
@inlinable
public func const<each Parameter, T>(_ value: T) -> (repeat each Parameter) -> T {
    return { (_: repeat each Parameter) in
        value
    }
}

#endif
