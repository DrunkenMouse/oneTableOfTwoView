//
//  ADFirstTableView.h
//  双重tableView的刷新
//
//  Created by 王奥东 on 16/3/23.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ADFirstTableView;
@protocol ADFirstTableViewSections<NSObject>


-(void)SendSecondTableViewSetion:(NSInteger)section;

@end

@interface ADFirstTableView : UITableView<UITableViewDelegate,UITableViewDataSource>

//保存数据的数组
@property(strong,nonatomic)NSArray *arrays;

@property(weak,nonatomic)id<ADFirstTableViewSections>delegateSel;

@end
