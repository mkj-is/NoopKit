
#if(swift(>=5.9))

/// Can be used instead of an empty closure as a syntactic sugar
/// when not using so many parentheses and underlines is preferred.
/// All passed parameters will not be used and thrown away.
///
/// - Parameter parameter: Any input, which will not be used.
/// - Returns: Independent on the input, returns void at all times.
@inlinable
public func noop<each Parameter>(_ parameter: repeat each Parameter) -> Void {}

#endif
