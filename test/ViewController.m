//
//  ViewController.m
//  test
//
//  Created by 裴骕 on 2017/8/19.
//  Copyright © 2017年 裴骕. All rights reserved.
//

#import "ViewController.h"
#import "rankViewController.h"
#import "loginViewController.h"
#import "answerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    float width = self.view.frame.size.width;
    float height = self.view.frame.size.height;
    
    UILabel *WelcomeLabel = [[UILabel alloc] initWithFrame:CGRectMake((width - 210)/2, 100, 210, 50)];
    [self.view addSubview:WelcomeLabel];
    WelcomeLabel.text = @"欢迎答题！";
    WelcomeLabel.font = [UIFont systemFontOfSize:40];

    UIButton *regiterBtn = [[UIButton alloc] initWithFrame:CGRectMake((width - 100)/2, height / 2 + 30, 100, 30)];
    [self.view addSubview:regiterBtn];
    [regiterBtn addTarget:self action:@selector(signinOrSignupBtnClick) forControlEvents:UIControlEventTouchUpInside];
    regiterBtn.backgroundColor = [UIColor colorWithRed:100/255.0 green:100/255.0 blue:100/255.0 alpha:1];
    [regiterBtn setTitle:@"登陆／注册" forState:UIControlStateNormal];
    
    UIButton *answerBtn = [[UIButton alloc] initWithFrame:CGRectMake((width - 100)/2, height / 2 + 70, 100, 30)];
    [self.view addSubview:answerBtn];
    [answerBtn addTarget:self action:@selector(answerStartBtnClick) forControlEvents:UIControlEventTouchUpInside];
    answerBtn.backgroundColor = [UIColor colorWithRed:100/255.0 green:100/255.0 blue:100/255.0 alpha:1];
    [answerBtn setTitle:@"开始答题" forState:UIControlStateNormal];
    
    UIButton *rankBtn = [[UIButton alloc] initWithFrame:CGRectMake((width - 100)/2, height / 2 + 110, 100, 30)];
    [self.view addSubview:rankBtn];
    [rankBtn addTarget:self action:@selector(rankBtnClick) forControlEvents:UIControlEventTouchUpInside];
    rankBtn.backgroundColor = [UIColor colorWithRed:100/255.0 green:100/255.0 blue:100/255.0 alpha:1];
    [rankBtn setTitle:@"排行榜" forState:UIControlStateNormal];
    
}

- (void)signinOrSignupBtnClick {
    loginViewController *vc = [loginViewController new];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void)answerStartBtnClick {
    answerViewController *vc = [answerViewController new];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void)rankBtnClick {
    rankViewController *vc = [rankViewController new];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
