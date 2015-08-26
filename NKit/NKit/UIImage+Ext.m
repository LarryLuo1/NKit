//
//  NKitUIImage+Ext.m
//  NKit
//
//  Created by 建 张 on 15/8/26.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import "UIImage+Ext.h"

@implementation UIImage (Ext)

+ (UIImage *)originalImageNamed:(NSString *)name {
    UIImage *image = [UIImage imageNamed:name];
    
    if (image == nil) {
        return nil;
    }
    
    return [image imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
}

@end
