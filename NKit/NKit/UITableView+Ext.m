//
//  UITableView+Ext.m
//  NKit
//
//  Created by 建 张 on 15/8/24.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import "UITableView+Ext.h"

@implementation UITableView (Ext)

- (UITableViewCell *)nkit_dequeueReusableCellWithIdentifier:(NSString *)reuseIdentifer
                                                   Delegate:(id<NKitUITableViewDelegate>)factory {
    
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:reuseIdentifer];
    
    if (cell == nil) {
        return [factory nkit_dequeueReusableCellFactory:reuseIdentifer];
    }
    
    return cell;
}

@end
