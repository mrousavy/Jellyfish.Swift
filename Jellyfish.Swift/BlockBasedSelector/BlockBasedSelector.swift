//
//  BlockBasedSelector.swift
//  Jellyfish.Swift
//
//  Created by Marc Rousavy on 17.10.18.
//  Copyright © 2018 mrousavy. All rights reserved.
//

import Foundation
import UIKit

func Selector(_ block: @escaping () -> Void) -> Selector {
    let selector = NSSelectorFromString("\(CACurrentMediaTime())")
    class_addMethodWithBlock(_Selector.self, selector) { (_) in block() }
    return selector
}

let Selector = _Selector.shared
@objc class _Selector: NSObject {
    static let shared = _Selector()
}
