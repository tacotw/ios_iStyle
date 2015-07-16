//
//  MainViewController.h
//  ios_iStyle
//
//  Created by Saker Lin on 2015/7/14.
//  Copyright (c) 2015年 Saker Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Collage.h"
#import "SelectPhotoViewController.h"
@interface MainViewController : UIViewController<SelectPhotoViewControllerDelegate>
@property (nonatomic, strong) Collage *collage;

@end
