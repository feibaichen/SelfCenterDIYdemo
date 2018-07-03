//
//  mySelfTableViewCell.m
//  SelfCenterDIYdemo
//
//  Created by MacOS on 2018/7/3.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "mySelfTableViewCell.h"

@implementation mySelfTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        [self addView];
        
    }
    return self;
    
}
-(void)addView{
    
    [self.contentView addSubview:self.headIconImageView];
    [self.contentView addSubview:self.headNameLable];
    [self.contentView addSubview:self.headDetailLable];
    [self.contentView addSubview:self.threeButtonView];
    
    
    NSArray * titleArray = @[@"余额",@"银行卡",@"消费记录"];
    NSArray * imgArray = @[@"earning",@"card",@"fee"];
    
    for (int i = 0; i < 3; i++ ) {
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(i * ([UIScreen mainScreen].bounds.size.width/3), 0, [UIScreen mainScreen].bounds.size.width/3, 60)];
        [button setTitle:titleArray[i] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:15];
        [button setImage:[UIImage imageNamed:imgArray[i]] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        button.imageEdgeInsets =  UIEdgeInsetsMake(5, 5, 5, 5);
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 8, 0, 0);
        [self.threeButtonView addSubview:button];
        
        if (i != 0) {
            
            UILabel *lineLable = [[UILabel alloc] initWithFrame:CGRectMake(i * ([UIScreen mainScreen].bounds.size.width/3), 20, 1, 60 - 40)];
            lineLable.backgroundColor = [UIColor lightGrayColor];
            [self.threeButtonView addSubview:lineLable];
            
        }
    
    }
}
-(UIImageView *)headIconImageView{
    
    if (!_headIconImageView) {
        
        _headIconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 120 - 40, 120 - 40)];
        _headIconImageView.clipsToBounds = YES;
        _headIconImageView.layer.cornerRadius = 10;
        _headIconImageView.backgroundColor = [UIColor redColor];
    }
    return _headIconImageView;
    
}
-(UILabel *)headNameLable{
    
    if(!_headNameLable){
        _headNameLable = [[UILabel alloc] initWithFrame:CGRectMake(_headIconImageView.frame.origin.x + _headIconImageView.frame.size.width + 10, 20, 150, 30)];
        //_headNameLable.backgroundColor = [UIColor orangeColor];
    }
    return _headNameLable;
}
-(UILabel *)headDetailLable{
    
    if(!_headDetailLable){
        _headDetailLable = [[UILabel alloc] initWithFrame:CGRectMake(_headIconImageView.frame.origin.x +
                                                                    _headIconImageView.frame.size.width + 10, _headNameLable.frame.origin.y + 30 + 5, 150, 30)];
        _headDetailLable.textColor = [UIColor lightGrayColor];
        _headDetailLable.font = [UIFont systemFontOfSize:14];
        //_headDetailLable.backgroundColor = [UIColor blueColor];
    }
    return _headDetailLable;
}
-(UIView *)threeButtonView{
    
    if (!_threeButtonView) {
        
        _threeButtonView = [[UIView alloc] initWithFrame:CGRectMake(0, 180 - 60, [UIScreen mainScreen].bounds.size.width, 60)];
        //_threeButtonView.backgroundColor = [UIColor redColor];

    }
    return _threeButtonView;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
