//
//  CaculatorMaker.h
//  Test
//
//  Created by lenovo on 3/19/16.
//  Copyright © 2016 hdbl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorMaker : NSObject

@property (nonatomic, assign) int reault;

- (CaculatorMaker *(^)(int))add;
- (CaculatorMaker *(^)(int))sub;

@end
