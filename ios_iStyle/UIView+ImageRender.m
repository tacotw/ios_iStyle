//
//  UIView+ImageRender.m
//  ios_iStyle
//
//  Created by Saker Lin on 2015/7/15.
//  Copyright (c) 2015年 Saker Lin. All rights reserved.
//

#import "UIView+ImageRender.h"

@implementation UIView (ImageRender)

- (UIImage *)renderImage {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0.0f);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:NO];
    UIImage * snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snapshotImage;
}

@end
