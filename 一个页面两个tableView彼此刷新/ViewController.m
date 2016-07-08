//
//  ViewController.m
//  一个页面两个tableView彼此刷新
//
//  Created by 王奥东 on 16/6/30.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import "ViewController.h"
#import "ADFirstTableView.h"
#import "ADSecondTableView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //设置第一个tableView
    ADFirstTableView *firstTableView = [[ADFirstTableView alloc]initWithFrame:CGRectMake(0, 0, 97, 505)];
    [self.view addSubview:firstTableView];
    
    //设置第二个tableView，并把第一个tableView传过去设置代理对象
    ADSecondTableView *secondTableView = [[ADSecondTableView alloc]initWithFrame:CGRectMake(97, 0, 279, 505) withFirstTableView:firstTableView];
    [self.view addSubview:secondTableView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
