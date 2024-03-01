// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public protocol KeypathViewBuilder {}

public extension KeypathViewBuilder where Self: AnyObject {
    @discardableResult
    func set<T>(_ keyPath:ReferenceWritableKeyPath<Self, T>, to newValue: T) -> Self {
        self[keyPath: keyPath] = newValue
        return self
    }
    
    @discardableResult
    func reinforce(_ handler: (Self) -> ()) -> Self {
        handler(self)
        return self
    }
}

extension NSObject: KeypathViewBuilder {}
