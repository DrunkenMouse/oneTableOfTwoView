//
//  ADSecondTableView.m
//  双重tableView的刷新
//
//  Created by 王奥东 on 16/3/23.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import "ADSecondTableView.h"


@implementation ADSecondTableView


-(instancetype)initWithFrame:(CGRect)frame withFirstTableView:(ADFirstTableView *)first{
    if (self = [super initWithFrame:frame]) {
        self.delegate = self;
        self.dataSource = self;

        first.delegateSel = self;
        
        self.rowHeight = 80;

    }
    return self;
}

-(NSArray *)arrays{
    if (_arrays==nil) {
        _arrays = @[@"这里是销量排行",@"这里是配送说明",@"这里是新年大礼盒专区",@"这里是今日新品",@"这里是商务会议",@"这里是水果酸奶",@"这里是原味果切",@"这里是营养三拼"];
    }
    return _arrays;
}

//通过已选行数的set方法刷新当前的tableView
-(void)setSelRow:(NSInteger)selRow{
    _selRow = selRow;
    
    [self reloadData];
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

//设置Cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    NSString *str = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:str];
    }
    
    cell.textLabel.text =self.arrays[self.selRow];
    cell.textLabel.numberOfLines = 0;
    return cell;
}

//通过代理方法获取选择的行数
-(void)SendSecondTableViewSetion:(NSInteger)section{
    
    self.selRow = section;
    
}


@end
