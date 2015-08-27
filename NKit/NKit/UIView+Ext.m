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

+ (instancetype)nkit_withZero {
    
    return [[self alloc] initWithFrame:CGRectZero];
}

@end
