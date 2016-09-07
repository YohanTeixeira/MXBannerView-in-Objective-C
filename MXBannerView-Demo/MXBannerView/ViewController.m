//
//  ViewController.m
//  MXBannerView
//
//  Created by Meniny on 16/9/7.
//  Copyright © 2016年 Meniny. All rights reserved.
//

#import "ViewController.h"
#import "MXAutoLayout.h"
#import "MXBannerView.h"

@interface ViewController () <MXBannerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray <NSString *>* source = @[
                                     @"http://img02.imgcdc.com/grab/img/20160907/86291473212635.jpeg",
                                     @"http://img02.imgcdc.com/grab/img/20160907/71941473212635.jpeg",
                                     @"http://i5.073img.com/160907/5808312_114823_3_lit.gif",
                                     @"http://i5.073img.com/160907/5808312_114951_1_lit.jpg",
                                     @"http://7xlvky.com1.z0.glb.clouddn.com/20160903164033644-882947694.jpg",
//                                     @"Zootopia-1",
//                                     @"Zootopia-2",
//                                     @"Zootopia-3",
//                                     @"Zootopia-4",
                                     ];
    
//    MXBannerView *banner = [[MXBannerView alloc] initWithFrame:CGRectZero type:MXImageTypeNetwork images:source];
    MXBannerView *banner = [[MXBannerView alloc] init];
    [banner setShowPageControl:YES];
    [banner setInfiniteScrollEnabled:YES];
    [banner setImageURLArray:[source copy]];
//    [banner setAutoScrollEnabled:YES];
//    [banner setLocalImageArray:[source mutableCopy]];
    [[self view] addSubview:banner];
    [banner setDelegate:self];
    
    [banner alignOriginWithPadding:CGPointZero];
    [banner alignRightToSuperviewWithPadding:0.0f];
    [banner setLayoutHeight:300.0f];
}

- (void)bannerView:(MXBannerView *)bannerView didSelectItemAtIndex:(NSUInteger)index {
    NSLog(@"%zd", index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
