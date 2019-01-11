//
//  UIViewController+Builder.h
//  Test
//
//  Created by mzy on 2019/1/11.
//  Copyright © 2019 hdbl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface ViewControllerMaker : NSObject

- (ViewControllerMaker *)initWith:(UIViewController *)viewController;

- (ViewControllerMaker *)setPageInfo:(void(^)(UIViewController *viewController))pageInfo;

- (ViewControllerMaker *)setPageInfo:(NSDictionary *)dic;

- (UIViewController *)build;

@end


@interface UIViewController (Builder)


+ (ViewControllerMaker *)initialize:(UIViewController *(^)())construction;


@end

NS_ASSUME_NONNULL_END
