//
//  NKitTableViewCell.m
//  NKit
//
//  Created by 建 张 on 15/8/24.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import "NKitTableViewCell.h"

@implementation NKitTableViewCell

- (void)configure {}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self configure];
    }
    
    return self;
}

- (instancetype)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configure];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self configure];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self.configure];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (self.accessoryView != nil && !CGPointEqualToPoint(self.accessoryPoint, CGPointZero)) {
        CGPoint center = self.accessoryView.center;
        center.x *= self.accessoryPoint.x;
        center.y *= self.accessoryPoint.y;
        self.accessoryView.center = center;
    }
}

@end
