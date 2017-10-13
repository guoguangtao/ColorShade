//
//  GPTableViewCell.h
//  ColorShade
//
//  Created by ggt on 2017/8/24.
//  Copyright © 2017年 ggt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GPTableViewCell : UITableViewCell

#pragma mark - Property

@property (nonatomic, assign) CGFloat layerHeight;


#pragma mark - Method

+ (instancetype)cellWithTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath;

@end
