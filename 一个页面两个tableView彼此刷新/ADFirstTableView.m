//
//  ADFirstTableView.m
//  双重tableView的刷新
//
//  Created by 王奥东 on 16/3/23.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import "ADFirstTableView.h"
#import "ADSecondTableView.h"
@interface ADFirstTableView()

@property(assign,nonatomic)NSInteger selRow;


@end
@implementation ADFirstTableView


-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.delegate = self;
        self.dataSource = self;
        
        self.rowHeight = 80;
    }
    return self;
}

-(NSArray *)arrays{
    if (_arrays==nil) {
        _arrays = @[@"销量排行",@"配送说明",@"新年大礼盒专区",@"今日新品",@"商务会议",@"水果酸奶",@"原味果切",@"营养三拼"];
    }
    return _arrays;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrays.count;
}
//cell的内容设置
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *str = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:str];
    }
    
    cell.textLabel.text =self.arrays[indexPath.row];
    cell.textLabel.numberOfLines = 0;
    return cell;
}
//点击cell时，调用代理方法传过去数值
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    _selRow = indexPath.row;
    if ([self.delegateSel respondsToSelector:@selector(SendSecondTableViewSetion:)]) {
        [self.delegateSel SendSecondTableViewSetion:_selRow];
   
    }
}



@end
