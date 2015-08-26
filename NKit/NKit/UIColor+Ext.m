//
//  UIColor+Ext.m
//  NKit
//
//  Created by 建 张 on 15/8/26.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import "UIColor+Ext.h"

@implementation UIColor (Ext)

- (instancetype)initWithRgba:(NSString *)rgba
{

    CGFloat red = 0;
    CGFloat green = 0;
    CGFloat blue = 0;
    CGFloat alpha = 1;

    
    if ([rgba hasPrefix:@"#"]) {
        NSString *hex = [rgba substringFromIndex:1];
        NSScanner *scanner = [[NSScanner alloc]initWithString:hex];
        unsigned long long hexValue = 0;
        
        if ([scanner scanHexLongLong:&hexValue]) {
            switch (hex.length) {
                case 3:
                    red   = ((hexValue & 0xF00) >> 8) / 15.0;
                    green = ((hexValue & 0x0F0) >> 4) / 15.0;
                    blue  = (hexValue & 0x00F) / 15.0;
                    break;
                case 4:
                    red   = ((hexValue & 0xF000) >> 12) / 15.0;
                    green = ((hexValue & 0x0F00) >> 8) / 15.0;
                    blue  = ((hexValue & 0x00F0) >> 4) / 15.0;
                    alpha = (hexValue & 0x000F) / 15.0;
                    break;
                case 6:
                    red   = ((hexValue & 0xFF0000) >> 16) / 255.0;
                    green = ((hexValue & 0x00FF00) >> 8) / 255.0;
                    blue  = (hexValue & 0x0000FF) / 255.0;
                    break;
                case 8:
                    red   = ((hexValue & 0xFF000000) >> 24) / 255.0;
                    green = ((hexValue & 0x00FF0000) >> 16) / 255.0;
                    blue  = ((hexValue & 0x0000FF00) >> 8) / 255.0;
                    alpha = (hexValue & 0x000000FF) / 255.0;
                    break;
                default:
                    break;
            }
        }
    }
    
    return [self initWithRed:red green:green blue:blue alpha:alpha];
    
}

@end
