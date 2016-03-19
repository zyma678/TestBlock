//
//  Caculator.m
//  Test
//
//  Created by lenovo on 3/19/16.
//  Copyright © 2016 hdbl. All rights reserved.
//

#import "Caculator.h"
#import "CaculatorMaker.h"

@implementation NSObject (Caculator)

+ (int)makeCaculators:(void(^)(CaculatorMaker *))caculator{
    CaculatorMaker *maker = [[CaculatorMaker alloc] init];
    caculator(maker);
    return maker.reault;
}

@end
