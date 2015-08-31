//
//  UIView+Ext.m
//  NKit
//
//  Created by 建 张 on 15/8/26.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import "UIView+Ext.h"

@implementation UIView (Ext)

+ (instancetype)nkit_withFull {
    
    return [[self alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (void)nkit_configure {}

- (instancetype)initWithNKitFrame:(CGRect)frame
{
    self = [self initWithFrame:frame];
    
    if (self) {
        [self nkit_configure];
    }
    return self;
}

- (instancetype)initWithNKitCoder:(NSCoder *)coder
{
    self = [self initWithCoder:coder];
    if (self) {
        [self nkit_configure];
    }
    return self;
}

@end
