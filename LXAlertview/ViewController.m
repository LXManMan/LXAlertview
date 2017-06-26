//
//  ViewController.m
//  LXAlertview
//
//  Created by zhongzhi on 2017/6/22.
//  Copyright © 2017年 zhongzhi. All rights reserved.
//

#import "ViewController.h"
#import "LXAlertView.h"
#import "testController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LXAlertView *alertView =[[LXAlertView alloc]initWithTitle:@"马上充值？" leftBtnTitle:@"先不充值" rightBtnTitle:@"充值" alertResult:^(NSInteger index) {
        
        __weak ViewController *weakSelf= self;
        if (index ==2) {
            testController *nextVc =[[testController alloc]init];
            nextVc.view.backgroundColor =[UIColor cyanColor];
            [weakSelf.navigationController pushViewController:nextVc animated:YES];
        }
    }];
    [alertView showLXAlertView];
    
    self.view.backgroundColor =[UIColor blueColor];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
