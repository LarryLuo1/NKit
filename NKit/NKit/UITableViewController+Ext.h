//
//  UITableViewController+Ext.h
//  NKit
//
//  Created by 建 张 on 15/8/24.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableView+Ext.h"

@interface UITableViewController (Ext) <NKitUITableViewDelegate>
- (UITableViewCell *)nkit_dequeueReusableCellFactory:(NSString *)reuseIdentifer;
@end
