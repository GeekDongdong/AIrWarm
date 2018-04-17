//
//  ViewController.m
//  AirWarm
//
//  Created by JACK on 2018/4/17.
//  Copyright © 2018年 JACK. All rights reserved.
//

#import "ViewController.h"
#import "TabBarController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    UIImageView *animationImageView = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    animationImageView.image = [UIImage imageNamed:@"animationImageView"];
    [self.view addSubview:animationImageView];
    
    
    //jump to main VC after 2.0s
    [NSTimer scheduledTimerWithTimeInterval:2.0 repeats:NO block:^(NSTimer * _Nonnull timer) {
        TabBarController *tabBarC = [[TabBarController alloc]init];
        [self presentViewController:tabBarC animated:YES completion:nil];
    }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
