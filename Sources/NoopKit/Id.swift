
#if(swift(>=5.9))

/// Function used for passing input parameters to higher-order functions.
///
/// - Parameter parameter: All parameter will be returned as a tuple.
/// - Returns: Tuple with all unmodified input parameters in the same order.
@inlinable
public func id<each Parameter>(_ parameter: repeat each Parameter) -> (repeat each Parameter) {
    return (repeat each parameter)
}

#endif
