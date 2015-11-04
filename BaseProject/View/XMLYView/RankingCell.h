//
//  RankingCell.h
//  BaseProject
//
//  Created by ios－54 on 15/11/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RankingCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *rowNumLabel;

@property (weak, nonatomic) IBOutlet UIImageView *headImageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *introLabel;

@property (weak, nonatomic) IBOutlet UILabel *tracksLabel;

@end
