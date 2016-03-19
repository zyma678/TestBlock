//
//  ViewController.m
//  Test
//
//  Created by lenovo on 3/19/16.
//  Copyright © 2016 hdbl. All rights reserved.
//

#import "ViewController.h"
#import "CaculatorMaker.h"
#import "Caculator.h"
#import "Operator.h"

typedef CaculatorMaker * (^Block_T)(int);

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int result = [NSObject makeCaculators:^(CaculatorMaker *maker) {
        maker.add(1).add(2).add(3).sub(1);
    }];
    NSLog(@"%d",result);
    
    Operator *operator = [[Operator alloc] init];
    BOOL isEqula = [[[operator caculator:^int(int value) {
            value +=2;
            return value;
        }] equal:^BOOL(int value) {
            return value == 2;
        }] isEquale];
    NSLog(@"%d",isEqula);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
