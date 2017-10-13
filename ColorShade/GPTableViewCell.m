//
//  GPTableViewCell.m
//  ColorShade
//
//  Created by ggt on 2017/8/24.
//  Copyright © 2017年 ggt. All rights reserved.
//

#import "GPTableViewCell.h"

@interface GPTableViewCell ()

@property (nonatomic, strong) NSIndexPath *indexPath;
@property (nonatomic, strong) CAGradientLayer *gradientLayer;

@end

@implementation GPTableViewCell

#pragma mark - Lifecycle

+ (instancetype)cellWithTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"GPTableViewCell";
    GPTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[GPTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    cell.indexPath = indexPath;
    
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.contentView.backgroundColor = [UIColor whiteColor];
        
        [self setupUI];
        [self setupConstraints];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.gradientLayer.frame = CGRectMake(0, 0, self.bounds.size.width, self.layerHeight > 0 ? self.layerHeight + 20 : 0);
}

- (void)dealloc {
    
    NSLog(@"%s", __func__);
}

#pragma mark - UI

- (void)setupUI {
    
    self.textLabel.numberOfLines = 0;
    self.textLabel.textColor = [UIColor orangeColor];
}


#pragma mark - Constraints

- (void)setupConstraints {
    

}


#pragma mark - Custom Accessors (Setter 与 Getter 方法)

- (void)setLayerHeight:(CGFloat)layerHeight {
    
    _layerHeight = layerHeight;
    [self layoutSubviews];
}


#pragma mark - IBActions


#pragma mark - Public


#pragma mark - Private


#pragma mark - Protocol


#pragma mark - 懒加载

@end
