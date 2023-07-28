
#if(swift(>=5.9))

/// Placeholder function to make clear it needs to be implemented.
/// It is easier to find than empty braces.
///
/// Parameters:
/// - Parameter parameter: Parameters will not be used.
/// - Returns: Never returns, calls fatal error internally.
@inlinable
public func undefined<each Parameter, T>(_ parameter: repeat each Parameter) -> T {
    fatalError("Implement this undefined function or closure.")
}

#endif
