//
//  GPViewController.m
//  ColorShade
//
//  Created by ggt on 2017/9/25.
//  Copyright © 2017年 ggt. All rights reserved.
//

#import "GPViewController.h"
#import "Masonry.h"

@interface GPViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation GPViewController

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
    
    [self.view addSubview:self.collectionView];
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
        make.centerY.equalTo(self.view);
        make.height.mas_equalTo(50);
    }];
    
    [self.view layoutIfNeeded];
    
    CAGradientLayer *layer = [[CAGradientLayer alloc] init];
    layer.colors = @[
                     (__bridge id)[UIColor colorWithWhite:0 alpha:1.0f].CGColor,
                     (__bridge id)[UIColor colorWithWhite:0 alpha:0.2].CGColor
                     ];
    layer.locations = @[@0.7, @1.0f];
    layer.startPoint = CGPointMake(0, 0);
    layer.endPoint = CGPointMake(1, 0);
    layer.frame = self.collectionView.bounds;
    self.collectionView.layer.mask = layer;
    self.collectionView.layer.masksToBounds = YES;
}


#pragma mark - Constraints

- (void)setupConstraints {
    
    
}


#pragma mark - Custom Accessors (Setter 与 Getter 方法)


#pragma mark - IBActions


#pragma mark - Public


#pragma mark - Private


#pragma mark - Protocol

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
    
    return cell;
}


#pragma mark - UICollectionViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    CAGradientLayer *layer = [[CAGradientLayer alloc] init];
    layer.colors = @[
                     (__bridge id)[UIColor colorWithWhite:0 alpha:1.0f].CGColor,
                     (__bridge id)[UIColor colorWithWhite:0 alpha:0.2].CGColor
                     ];
    layer.locations = @[@0.7, @1.0f];
    layer.startPoint = CGPointMake(0, 0);
    layer.endPoint = CGPointMake(1, 0);
    layer.frame = self.collectionView.bounds;
    self.collectionView.layer.mask = layer;
}


#pragma mark - 懒加载

- (UICollectionView *)collectionView {
    
    if (_collectionView == nil) {
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.itemSize =CGSizeMake(30, 30);
        flowLayout.minimumLineSpacing = 10;
        flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    }
    
    return _collectionView;
}

@end
