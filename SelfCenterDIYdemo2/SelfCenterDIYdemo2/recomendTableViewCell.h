//
//  recomendTableViewCell.h
//  SelfCenterDIYdemo2
//
//  Created by MacOS on 2018/7/3.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SquareUpFBC.h"

@interface recomendTableViewCell : UITableViewCell<SquareUpFBCdelegate>
@property (nonatomic,strong) NSArray *recomendArray;
@property (nonatomic,strong) UILabel *recomendLable;
@end
