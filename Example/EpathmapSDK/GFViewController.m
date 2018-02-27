//
//  GFViewController.m
//  EpathmapSDK
//
//  Created by 2319484461@qq.com on 02/12/2018.
//  Copyright (c) 2018 2319484461@qq.com. All rights reserved.
//

#import "GFViewController.h"
#import "EpathApiKey.h"
#import <EpathmapSDK/EpathmapSDK.h>

@interface GFViewController ()

@end

@implementation GFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(15, 150, [UIScreen mainScreen].bounds.size.width-30, 50);
    [btn setTitle:@"前往“绿地之窗”>>" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
-(void)btnClick
{
    EpathMapViewController *vc = [[EpathMapViewController alloc] initWithMapId:MapId];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
//    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
