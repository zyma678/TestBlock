//
//  Caculator.h
//  Test
//
//  Created by lenovo on 3/19/16.
//  Copyright © 2016 hdbl. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CaculatorMaker;
@interface NSObject (Caculator)

+ (int)makeCaculators:(void(^)(CaculatorMaker *))caculator;

@end
