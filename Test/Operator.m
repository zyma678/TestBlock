//
//  Operator.m
//  Test
//
//  Created by lenovo on 3/19/16.
//  Copyright © 2016 hdbl. All rights reserved.
//

#import "Operator.h"

@implementation Operator

- (Operator *)caculator:(int(^)(int value))calculator{
    self.value = calculator(self.value);
    return self;
}

- (Operator *)equal:(BOOL(^)(int value))operation{
    self.isEquale = operation(self.value);
    return self;
}

@end
