//
//  UIImage+CollagePreview.m
//  ios_iStyle
//
//  Created by Saker Lin on 2015/7/15.
//  Copyright (c) 2015年 Saker Lin. All rights reserved.
//

#import "UIImage+CollagePreview.h"
#import "Collage.h"

#import <CoreGraphics/CoreGraphics.h>

@implementation UIImage (CollagePreview)

+ (UIImage *)renderPreviewImageWithCollage:(Collage *)collage ofSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [[UIColor whiteColor] setFill];
    CGContextFillRect(context, CGRectMake(0., 0., size.width, size.height));
    
    [[UIColor colorWithWhite:0. alpha:0.5] setFill];
    [collage enumerateRelativeFramesUsingBlock:^(CGRect relativeFrame, NSUInteger index) {
        CGRect frame = relativeFrame;
        frame.origin.x *= size.width;
        frame.origin.y *= size.height;
        frame.size.width *= size.width;
        frame.size.height *= size.height;
        CGContextFillRect(context, frame);
    }];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
