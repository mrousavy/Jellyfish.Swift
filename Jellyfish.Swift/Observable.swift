//
//  Observable.swift
//  Jellyfish.Swift
//
//  Created by Marc Rousavy on 17.10.18.
//  Copyright © 2018 mrousavy. All rights reserved.
//
import Foundation

public class Observable<ObservedType> {
    public typealias Observer = (_ observable: Observable<ObservedType>, ObservedType) -> Void
    
    private var observers: [Observer]
    
    public var value: ObservedType? {
        didSet {
            if let value = value {
                notifyObservers(value)
            }
        }
    }
    
    public init(_ value: ObservedType? = nil) {
        self.value = value
        observers = []
    }
    
    public func bind(observer: @escaping Observer) {
        self.observers.append(observer)
    }
    
    private func notifyObservers(_ value: ObservedType) {
        self.observers.forEach { [unowned self](observer) in
            observer(self, value)
        }
    }
}

