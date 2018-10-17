//
//  BlockBasedSelector.m
//  Jellyfish.Swift
//
//  Created by Marc Rousavy on 17.10.18.
//  Copyright © 2018 mrousavy. All rights reserved.
//

#import "BlockBasedSelector.h"
#import <objc/runtime.h>

@implementation BlockBasedSelector
@end

void class_addMethodWithBlock(Class class, SEL newSelector, OBJCBlock block)
{
    IMP newImplementation = imp_implementationWithBlock(block);
    Method method = class_getInstanceMethod(class, newSelector);
    class_addMethod(class, newSelector, newImplementation,  method_getTypeEncoding(method));
}
