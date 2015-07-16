//
//  UIImage+CollagePreview.h
//  ios_iStyle
//
//  Created by Saker Lin on 2015/7/15.
//  Copyright (c) 2015年 Saker Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Collage;
@interface UIImage (CollagePreview)

+ (UIImage *)renderPreviewImageWithCollage:(Collage *)collage ofSize:(CGSize)size;

@end
