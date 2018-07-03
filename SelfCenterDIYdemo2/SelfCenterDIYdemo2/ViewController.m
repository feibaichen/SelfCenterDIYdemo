//
//  ViewController.m
//  SelfCenterDIYdemo2
//
//  Created by MacOS on 2018/7/3.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "ViewController.h"
#import "mySelfTableViewCell.h"
#import "collectTableViewCell.h"
#import "recomendTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"我的";
    [self.view addSubview:self.tableView];
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    if (section == 0) {
        
        return 0;
        
    }else{
        
        return 10;
    }
    
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UIView * v = [[UIView alloc] init];
    v.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
    return v;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 6;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([indexPath section] == 0) {
        
        return 180;
        
    }else if([indexPath section] == 1){
        
        return 120;
    }else if([indexPath section] == 2){
        
        return 220;
        
        
    }else{
        
        return 40;
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    if ([indexPath section] == 0) {
        
        mySelfTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"mySelfTableViewCellID"];
        
        if (cell == nil) {
            
            cell = [[mySelfTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"mySelfTableViewCellID"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.headIconImageView.image = [UIImage imageNamed:@"headimg.jpg"];
        cell.headNameLable.text =@"iOS Derek";
        cell.headDetailLable.text = @"微信号: 123456";
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        return cell;
        
        
    }else if ([indexPath section] == 1){
        
        collectTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"collectTableViewCellID"];
        
        if (cell == nil) {
            
            cell = [[collectTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"collectTableViewCellID"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.collectNameLable.text = self.dataArray[[indexPath section]];
        //cell.headDetailLable.text = @"微信号: 123456";
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        return cell;
        
    }else if ([indexPath section] == 2){
        
        recomendTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"recomendTableViewCellID"];
        
        if (cell == nil) {
            
            cell = [[recomendTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"recomendTableViewCellID"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.recomendLable.text = self.dataArray[[indexPath section]];
        //cell.headDetailLable.text = @"微信号: 123456";
        //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        return cell;
        
    }else{
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellid"];
        
        if (cell == nil) {
            
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cellid"];
        }
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        
        if ([indexPath section] == 0) {
            
            //cell.textLabel.text = self.dataArray[indexPath.row - 1];
            
        }else if ([indexPath section] == 1){
            
            cell.textLabel.text = self.dataArray[[indexPath section]];
            
        }else if ([indexPath section] == 2){
            
            cell.textLabel.text = self.dataArray[[indexPath section]];
            
        }else if ([indexPath section] == 3){
            
            cell.textLabel.text = self.dataArray[[indexPath section]];
            
        }else if ([indexPath section] == 4){
            
            cell.textLabel.text = self.dataArray[[indexPath section]];
            
        }else if ([indexPath section] == 5){
            
            cell.textLabel.text = self.dataArray[[indexPath section]];
        }
        
        return cell;
        
    }
    
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
        [_tableView registerClass:[mySelfTableViewCell class] forCellReuseIdentifier:@"mySelfTableViewCellID"];
    }
    return _tableView;
}
-(NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSArray arrayWithObjects:@"我的财富",@"我的收藏",@"推荐",@"反馈",@"联系我们",@"设置", nil];
    }
    return _dataArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
