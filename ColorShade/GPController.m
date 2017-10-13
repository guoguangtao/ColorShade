//
//  GPController.m
//  ColorShade
//
//  Created by ggt on 2017/8/24.
//  Copyright © 2017年 ggt. All rights reserved.
//

#import "GPController.h"
#import "Masonry.h"
#import "GPTableViewCell.h"

@interface GPController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation GPController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    [self setupConstraints];
}

- (void)dealloc {
    
    NSLog(@"%s", __func__);
}


#pragma mark - UI

- (void)setupUI {
    
    UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 30, [UIScreen mainScreen].bounds.size.width, 400)];
    [self.view addSubview:backgroundView];
    // 渐变蒙层
    CAGradientLayer *layer = [[CAGradientLayer alloc] init];
    layer.colors = @[
                     (__bridge id)[UIColor colorWithWhite:0 alpha:0.05f].CGColor,
                     (__bridge id)[UIColor colorWithWhite:0 alpha:1.0f].CGColor
                     ];
    layer.locations = @[@0, @0.4]; // 设置颜色的范围
    layer.startPoint = CGPointMake(0, 0); // 设置颜色渐变的起点
    layer.endPoint = CGPointMake(0, 1); // 设置颜色渐变的终点，与 startPoint 形成一个颜色渐变方向
    layer.frame = backgroundView.bounds; // 设置 Frame
    
    backgroundView.layer.mask = layer; // 设置 mask 属性
    
    
    [backgroundView addSubview:self.tableView];
}


#pragma mark - Constraints

- (void)setupConstraints {
    
    
}


#pragma mark - Custom Accessors (Setter 与 Getter 方法)


#pragma mark - IBActions


#pragma mark - Public


#pragma mark - Private


#pragma mark - Protocol

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    GPTableViewCell *cell = [GPTableViewCell cellWithTableView:tableView indexPath:indexPath];
    cell.textLabel.text = self.dataSource[indexPath.row];
    cell.layerHeight = 0;
    return cell;
}

#pragma mark - UIScrollViewDelegate


#pragma mark - 懒加载

- (UITableView *)tableView {
    
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, [UIScreen mainScreen].bounds.size.width, 400) style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.rowHeight = 200;
    }
    
    return _tableView;
}

- (NSArray *)dataSource {
    
    if (_dataSource == nil) {
        _dataSource = @[
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。",
                        @"1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。1. 创建UILabel.   --- > label只是用来做文字裁剪；必须要把label添加到view上，如果不添加到view上，label的图层就不会调用drawRect方法绘制文字，也就没有文字裁剪了。"
                        ];
    }
    
    return _dataSource;
}

@end
