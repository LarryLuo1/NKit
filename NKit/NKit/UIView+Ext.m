//
//  UIView+Ext.m
//  NKit
//
//  Created by 建 张 on 15/8/26.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import "UIView+Ext.h"

@implementation UIView (Ext)

+ (instancetype)fullScreen {
    
    return [[self alloc] initWithFrame:[UIScreen mainScreen].bounds];
}
@end
