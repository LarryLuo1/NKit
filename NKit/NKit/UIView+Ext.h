//
//  UIView+Ext.h
//  NKit
//
//  Created by 建 张 on 15/8/26.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (Ext)

- (instancetype)initWithNKitFrame:(CGRect)frame;

- (instancetype)initWithNKitCoder:(NSCoder *)coder;

- (void)nkit_configure;

@end
