//
//  XMLYRankingViewController.m
//  BaseProject
//
//  Created by ios－54 on 15/11/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "XMLYRankingViewController.h"
#import "XMLYRankingViewModel.h"
#import "RankingCell.h"

@interface XMLYRankingViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) XMLYRankingViewModel *RankingVM;


@end

@implementation XMLYRankingViewController

- (XMLYRankingViewModel *)RankingVM
{
    if (!_RankingVM) {
        _RankingVM = [[XMLYRankingViewModel alloc]init];
    }
    return _RankingVM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"音乐榜TOP50";
    self.tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [self.RankingVM refreshDataCompletionHandle:^(NSError *error) {
            [_tableView reloadData];
            [_tableView.header endRefreshing];
        }];
    }];
    [self.tableView.header beginRefreshing];
    self.tableView.footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        [self.RankingVM getMoreDataCompletionHandle:^(NSError *error) {
            [_tableView reloadData];
            [_tableView.footer endRefreshing];
        }];
    }];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.RankingVM.rowNumber;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RankingCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.titleLabel.text = [self.RankingVM titleForRow:indexPath.row];
    cell.rowNumLabel.text = @(indexPath.row+1).stringValue;
    cell.introLabel.text = [self.RankingVM introForRow:indexPath.row];
    cell.tracksLabel.text = [self.RankingVM tracksForRow:indexPath.row];
    [cell.headImageView setImageWithURL:[self.RankingVM imageURLForRow:indexPath.row]];
    return cell;
}

kRemoveCellSeparator;

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
