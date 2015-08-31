//
//  NKitTableViewFixedImageCell.m
//  NKit
//
//  Created by 建 张 on 15/8/31.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import "NKitTableViewFixedImageCell.h"

@implementation NKitTableViewFixedImageCell

- (instancetype)initWithImageSize:(CGSize)imageSize
                            style:(UITableViewCellStyle)style
                  reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        self.imageSize = imageSize;
    }
    
    return self;
}

- (void) nkit_configure {
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    
    if (self.imageView) {
        CGRect frame = self.imageView.frame;
        
        self.imageView.frame = CGRectMake(frame.origin.x, (frame.size.height - self.imageSize.height) / 2,
                                          self.imageSize.width, self.imageSize.height);
        
        CGFloat x = frame.size.width - self.imageSize.width;
        
        if (self.textLabel) {
            self.textLabel.frame = CGRectMake(self.textLabel.frame.origin.x - x, self.textLabel.frame.origin.y,
                                              self.textLabel.frame.size.width + x, self.textLabel.frame.size.height);
        }
        
        if (self.detailTextLabel) {
            self.detailTextLabel.frame = CGRectMake(self.detailTextLabel.frame.origin.x - x, self.detailTextLabel.frame.origin.y,
                                                    self.detailTextLabel.frame.size.width + x, self.detailTextLabel.frame.size.height);
        }
    }
}

@end
