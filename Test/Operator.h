//
//  Operator.h
//  Test
//
//  Created by lenovo on 3/19/16.
//  Copyright © 2016 hdbl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operator : NSObject

@property (nonatomic, assign) int value;
@property (nonatomic, assign) BOOL isEquale;

- (Operator *)caculator:(int(^)(int value))calculator;
- (Operator *)equal:(BOOL(^)(int value))operation;

@end
