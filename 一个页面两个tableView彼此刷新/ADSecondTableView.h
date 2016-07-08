//
//  ADSecondTableView.h
//  双重tableView的刷新
//
//  Created by 王奥东 on 16/3/23.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ADFirstTableView.h"

@interface ADSecondTableView : UITableView<UITableViewDataSource,UITableViewDelegate,ADFirstTableViewSections>

//通过此方法初始化tableView，并设置代理方法
-(instancetype)initWithFrame:(CGRect)frame withFirstTableView:(ADFirstTableView *)first;
//存储数据的数组
@property(nonatomic,strong)NSArray *arrays;
//已选择的行数
@property(nonatomic,assign)NSInteger selRow;
@end
