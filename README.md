# NoopKit

Short for **No-operation Kit**. Set of functions making work with empty closures a breeze.

By empty closures we mean:

- Closures not doing anything (not calling any other code).
- Closures returning constant value.
- Closures returning the same parameters whch were passed to them.

## Motivation

Day by day we are using more functional programming in our apps. The turning point for mainstream developer on Apple platforms was the introduction of SwiftUI.

In UIKit it was enough to write empty method or not connect IBAction in the interface builder. But as you can see this has a downside, it is hard to search for such an empty method or unused control.

Similarly, it is hard to search for unimplemented closures passed to higher-order functions. They can be a mess of underlines, brackets and parentheses. I wanted to improve the experience during active development by passing named functions, which enable us to make more readable code for human and are more discoverable.

There are typical use-cases where these free functions shine:

- SwiftUI previews.
- Tests.
- Unimplemented view bindings.
- Unimplemented completion handlers.

I also wanted to learn Sourcery and see how variadic generics can be used in Swift until [proposed solution from Generics manifesto](https://github.com/apple/swift/blob/master/docs/GenericsManifesto.md#variadic-generics) is added to the language.

## Usage examples

### No-op

Can be used either as a temporary placeholder or where no action is required. Sometimes the parameter is not optional and you need to
pass a value.

```swift
server.load { _ in }
server.load(completion: noop)

Stepper()
```

### Undefined

```swift
Button("Tap and crash", action: undefined)
Stepper("Step to crash", onIncrement: undefined, onDecrement: undefined)
```

### Constant

### Identity

Identity (`id`) function returns all the arguments it receives as a tuple. This is mostly useful in a function with one parameter.
Typical use-case is the `compactMap` method.

```swift
// Using closures
[1, nil, 2, nil].compactMap { $0 }
// Using id function
[1, nil, 2, nil].compactMap(id)
```

As you can see, the `id` can easily replace any  `{ $0 }` closure returning one anonymous parameter.

## Installation

*TBD*

## Authors & contributing

All contributions are welcome.

Project was created by [Matěj Kašpar Jirásek](https://github.com/mkj-is).

Project is licensed under [MIT license](LICENSE.txt).

## Acknowledgements

Some people explored similar concepts in the past, notably:

- https://academy.realm.io/posts/swift-summit-johannes-weiss-the-type-system-is-your-friend/
- https://academy.realm.io/posts/closures-api-design/
- https://github.com/pointfreeco/swift-prelude/blob/main/Sources/Prelude/Function.swift
- https://github.com/robrix/Prelude/blob/master/Prelude/Prelude.swift

Many of the ideas come from Haskell and other functional programming languages.

I iterated on their work mainly by adding „variadic generics“ using code generation.
