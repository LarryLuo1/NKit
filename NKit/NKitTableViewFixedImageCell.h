//
//  NKitTableViewFixedImageCell.h
//  NKit
//
//  Created by 建 张 on 15/8/31.
//  Copyright (c) 2015年 Jame298. All rights reserved.
//

#import "NKitTableViewCell.h"

@interface NKitTableViewFixedImageCell : NKitTableViewCell

@property(nonatomic, assign) CGSize imageSize;
- (instancetype)initWithImageSize:(CGSize)imageSize
                            style:(UITableViewCellStyle)style
                  reuseIdentifier:(NSString *)reuseIdentifier;
@end
