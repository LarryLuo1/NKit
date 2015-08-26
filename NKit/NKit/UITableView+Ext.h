//
//  UITableView+Ext.h
//  NKit
//
//  Created by 建 张 on 15/8/24.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol NKitUITableViewDelegate <NSObject>
- (UITableViewCell *)nkit_dequeueReusableCellFactory:(NSString *)reuseIdentifer;
@end


@interface UITableView (Ext)

- (UITableViewCell *)nkit_dequeueReusableCellWithIdentifier:(NSString *)reuseIdentifer
                                                   Delegate:(id<NKitUITableViewDelegate>)factory;

@end
