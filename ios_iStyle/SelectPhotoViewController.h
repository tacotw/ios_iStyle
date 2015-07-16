//
//  SelectPhotoViewController.h
//  ios_iStyle
//
//  Created by Saker Lin on 2015/7/15.
//  Copyright (c) 2015年 Saker Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SelectPhotoViewControllerDelegate <NSObject>

@required

- (void)selectPhoto:(UIImage *)image;

@end

@interface SelectPhotoViewController : UIViewController
@property (nonatomic, assign) id<SelectPhotoViewControllerDelegate> Photodelegate;
@end
