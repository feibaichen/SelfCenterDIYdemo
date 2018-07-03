//
//  collectTableViewCell.m
//  SelfCenterDIYdemo2
//
//  Created by MacOS on 2018/7/3.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "collectTableViewCell.h"

@implementation collectTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self addView];
    }
    return self;
}
-(void)addView{
    

    [self.contentView addSubview:self.collectNameLable];
    
    for (int i = 0 ; i < self.collectArray.count; i++) {
        
        UIImageView *collectItemImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20 + (20 + 120) * i  , 5, 120, 70)];
        collectItemImageView.image = [UIImage imageNamed:_collectArray[i]];
        collectItemImageView.clipsToBounds = YES;
        collectItemImageView.layer.cornerRadius = 10;
        collectItemImageView.backgroundColor = [UIColor redColor];
        [self.collectScrollView addSubview:collectItemImageView];
    }
     [self.contentView addSubview:self.collectScrollView];
}
-(NSArray *)collectArray{
    if (!_collectArray) {
        _collectArray = @[@"movie.png",@"movie.png",@"movie.png",@"movie.png",@"movie.png",@"movie.png",@"movie.png",@"movie.png",@"movie.png"];
    }
    return _collectArray;
}
-(UIScrollView *)collectScrollView{
    if (!_collectScrollView) {
        _collectScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,_collectNameLable.frame.origin.y + _collectNameLable.frame.size.height, [UIScreen mainScreen].bounds.size.width, 120 - 30 - 5)];
        _collectScrollView.contentSize = CGSizeMake((20 + 120) * _collectArray.count, 80 - 30 - 5);
    }
    return _collectScrollView;
}
-(UILabel *)collectNameLable{
    
    if(!_collectNameLable){
        _collectNameLable = [[UILabel alloc] initWithFrame:CGRectMake(15, 5, 120, 30)];
       // _collectNameLable.backgroundColor = [UIColor orangeColor];
    }
    return _collectNameLable;
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
