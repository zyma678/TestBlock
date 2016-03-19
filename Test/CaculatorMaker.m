//
//  CaculatorMaker.m
//  Test
//
//  Created by lenovo on 3/19/16.
//  Copyright © 2016 hdbl. All rights reserved.
//

#import "CaculatorMaker.h"

@implementation CaculatorMaker

- (CaculatorMaker *(^)(int))add{
    return ^CaculatorMaker *(int value){
        _reault += value;
        return self;
    };
}

- (CaculatorMaker *(^)(int))sub{
    return ^CaculatorMaker *(int value){
        _reault -= value;
        return self;
    };
}

@end
