//
//  UITableViewController+Ext.m
//  NKit
//
//  Created by 建 张 on 15/8/24.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import "NKitUITableViewController+Ext.h"

@implementation UITableViewController (Ext)

- (UITableViewCell *)nkit_dequeueReusableCellFactory:(NSString *)reuseIdentifer {
    return [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:reuseIdentifer];
}

@end
