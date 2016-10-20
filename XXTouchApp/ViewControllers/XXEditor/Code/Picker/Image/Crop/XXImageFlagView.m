//
//  XXImageFlagView.m
//  XXTouchApp
//
//  Created by Zheng on 20/10/2016.
//  Copyright © 2016 Zheng. All rights reserved.
//

#import "XXImageFlagView.h"

@interface XXImageFlagView ()
@property (nonatomic, strong) UILabel *hahaLabel;
@property (nonatomic, strong) UILabel *indexLabel;

@end

@implementation XXImageFlagView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (UILabel *)hahaLabel {
    if (!_hahaLabel) {
        UILabel *hahaLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
        hahaLabel.text = @"🐸";
        hahaLabel.textAlignment = NSTextAlignmentCenter;
        [hahaLabel sizeToFit];
        hahaLabel.center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
        _hahaLabel = hahaLabel;
    }
    return _hahaLabel;
}

- (UILabel *)indexLabel {
    if (!_indexLabel) {
        UILabel *indexLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
        indexLabel.text = @"1";
        indexLabel.textColor = [UIColor whiteColor];
        indexLabel.font = [UIFont systemFontOfSize:12.f];
        indexLabel.textAlignment = NSTextAlignmentCenter;
        indexLabel.center = self.hahaLabel.center;
        _indexLabel = indexLabel;
    }
    return _indexLabel;
}

- (void)setup {
    self.backgroundColor = [UIColor clearColor];
    [self addSubview:self.hahaLabel];
    [self addSubview:self.indexLabel];
}

- (XXPositionColorModel *)dataModel {
    if (!_dataModel) {
        _dataModel = [XXPositionColorModel new];
    }
    return _dataModel;
}

- (void)setIndex:(NSUInteger)index {
    _index = index;
    self.indexLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)index];
}

@end
