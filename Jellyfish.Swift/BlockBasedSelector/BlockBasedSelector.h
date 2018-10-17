//
//  BlockBasedSelector.h
//  Jellyfish.Swift
//
//  Created by Marc Rousavy on 17.10.18.
//  Copyright © 2018 mrousavy. All rights reserved.
//

#ifndef BlockBasedSelector_h
#define BlockBasedSelector_h

#import <Foundation/Foundation.h>

@interface BlockBasedSelector : NSObject

@end

typedef void (^OBJCBlock)(id foo);

void class_addMethodWithBlock(Class class, SEL newSelector, OBJCBlock block);

#endif /* BlockBasedSelector_h */
