//
//  UIViewController+Builder.m
//  Test
//
//  Created by mzy on 2019/1/11.
//  Copyright © 2019 hdbl. All rights reserved.
//

#import "UIViewController+Builder.h"

@interface ViewControllerMaker ()

@property (nonatomic, strong) UIViewController *viewController;

@end

@implementation ViewControllerMaker

- (ViewControllerMaker *)initWith:(UIViewController *)viewController {
    self = [super init];
    if (self) {
        self.viewController = viewController;
    }
    return self;
}

- (ViewControllerMaker *)setPageInfo:(void(^)(UIViewController *viewController))pageInfo {
    
    return nil;
}

- (UIViewController *)build {
    return self.viewController;
}

@end

@implementation UIViewController (Builder)

+ (ViewControllerMaker *)initialize:(UIViewController *(^)())construction {
    UIViewController *vc = construction();
    ViewControllerMaker *maker = [[ViewControllerMaker alloc] initWith:vc];
    return maker;
}

@end
