//
//  CPRViewController.m
//  CPRAddition
//
//  Created by yttsecretlisa on 06/24/2018.
//  Copyright (c) 2018 yttsecretlisa. All rights reserved.
//

#import "CPRViewController.h"
#import <CPRAddition/CPRAddition.h>

@interface CPRViewController ()

@end

@implementation CPRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSDictionary *dict = @{@"name": @"name value",
                           @"age" : @16,
                           @"height" : @180,
                           @"weight" : @50,
                           };
    NSString *json = [NSDictionary cpr_JSONStringFromDictionary:dict];
    NSLog(@"json:%@", json);
    
    NSDictionary *newDict = [NSDictionary cpr_dictionaryFromJSONString:json];
    NSLog(@"newDict:%@", newDict);
    
    UIButton *testView = [[UIButton alloc] initWithFrame:CGRectMake(30, 30, 100, 100)];
    [testView setTitle:@"Button" forState:UIControlStateNormal];
    testView.backgroundColor = [UIColor blackColor];
    [testView cpr_setCornerRadius:50 boderColor:[UIColor cpr_colorWithHex:0xf64848] borderWidth:10];
    // [testView cpr_setCornerRadius:50 boderColor:[UIColor orangeColor] borderWidth:10 byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomLeft];
    NSArray *colors = @[
                        [UIColor cpr_colorWithHex:0x0074ff],
                        [UIColor cpr_colorWithHex:0x00b7ff],
                        ];
    UIImage *image = [UIImage cpr_gradientColorImageFromColors:colors gradientType:CPRGradientTypeTopToBottom imgSize:CGSizeMake(100, 100)];
    [testView setBackgroundImage:image forState:UIControlStateNormal];
    // [testView setBackgroundImage:[UIImage cpr_imageWithColor:[UIColor purpleColor]] forState:UIControlStateNormal];
    [self.view addSubview:testView];
    NSLog(@"size: %.2f, %.2f", testView.size.width, testView.size.height);
    NSLog(@"originX: %.2f", testView.originX);
    NSLog(@"originY: %.2f", testView.originY);
    NSLog(@"centerX: %.2f", testView.centerX);
    NSLog(@"centerY: %.2f", testView.centerY);
    NSLog(@"width: %.2f", testView.width);
    NSLog(@"height: %.2f", testView.height);
    NSLog(@"origin: %.2f, %.2f", testView.origin.x, testView.origin.y);
    
    // test view add gesture
    UIView *gestureView = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMidX(testView.frame), CGRectGetMaxY(testView.frame) + 10, 200, 70)];
    gestureView.backgroundColor = [UIColor colorWithPatternImage:image];
    [gestureView cpr_setCornerRadius:8 boderColor:nil borderWidth:0];
    [gestureView cpr_addTapGestureRecognizer:^(UITapGestureRecognizer *tap) {
        NSLog(@"tap state: %ld", tap.state);
    }];
    [gestureView cpr_addLongPressGestureRecognizer:^(UILongPressGestureRecognizer *longPress) {
        NSLog(@"longPress state: %ld", longPress.state);
    }];
    [self.view addSubview:gestureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
