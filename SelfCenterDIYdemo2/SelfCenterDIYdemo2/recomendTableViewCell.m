//
//  recomendTableViewCell.m
//  SelfCenterDIYdemo2
//
//  Created by MacOS on 2018/7/3.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "recomendTableViewCell.h"

#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_heght [UIScreen mainScreen].bounds.size.height

@implementation recomendTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self addView];
    }
    return self;
}
-(void)addView{
    
    [self.contentView addSubview:self.recomendNameLable];
    
    SquareUpFBC *square = [[SquareUpFBC alloc] initWithBaseFrame:CGRectMake(0, 40, screen_width, 180) andNum_of_squareness:10 andNum_of_squareness_horizontal:4 andSquareness_width:40 andSquareness_height:40 andSquareness_padding_to_top:10 andSquareness_padding_to_left:40 andSquareness_padding_to_right:40 andSquareness_avage_distence_horizental:10 andSquareness_avage_distence_vertical:15];
    square.delegate = self;
    square.backgroundColor = [UIColor whiteColor];
    
    [self.contentView addSubview:square];
    
    
}
-(NSArray *)recomendArray{
    if (!_recomendArray) {
        _recomendArray= @[@"movie.png",@"movie.png",@"movie.png",@"movie.png",@"movie.png",@"movie.png",@"movie.png",@"movie.png",@"movie.png"];
    }
    return _recomendArray;
}

-(UILabel *)recomendNameLable{
    
    if(!_recomendLable){
        _recomendLable = [[UILabel alloc] initWithFrame:CGRectMake(15, 5, 120, 30)];
        // _collectNameLable.backgroundColor = [UIColor orangeColor];
    }
    return _recomendLable;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(void)whichViewIsTap:(UITapGestureRecognizer *)tapGestureRecognizer{
    
    NSLog(@"%ld",tapGestureRecognizer.view.tag);
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
