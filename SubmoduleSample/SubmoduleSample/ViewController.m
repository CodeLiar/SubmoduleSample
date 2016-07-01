//
//  ViewController.m
//  SubmoduleSample
//
//  Created by 丁明杰 on 6/30/16.
//  Copyright © 2016 Geass. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
#import "AFHTTPSessionManager.h"
#import "AFViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] init];
}

- (void)btnClick:(id)sender
{
//    MyViewController *vc = [[MyViewController alloc] init];
    AFViewController *vc = [[AFViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
