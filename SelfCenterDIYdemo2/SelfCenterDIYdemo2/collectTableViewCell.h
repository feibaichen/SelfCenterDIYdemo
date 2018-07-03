//
//  collectTableViewCell.h
//  SelfCenterDIYdemo2
//
//  Created by MacOS on 2018/7/3.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface collectTableViewCell : UITableViewCell
@property (nonatomic,strong) UIScrollView *collectScrollView;
@property (nonatomic,strong) NSArray *collectArray;
@property (nonatomic,strong) UILabel *collectNameLable;
@end
