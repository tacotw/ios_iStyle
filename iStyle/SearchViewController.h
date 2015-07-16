//
//  SearchViewController.h
//  iStyle
//
//  Created by Taco Chang on 2015/7/13.
//  Copyright (c) 2015年 Taco Chang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchRecord.h"

@class SearchViewController;

@protocol SearchViewControllerDelegate <NSObject>

-(void)getSelectedRecord:(SearchRecord *)record;

@end

@interface SearchViewController : UIViewController

@property (nonatomic, assign) id<SearchViewControllerDelegate> delegate;

@end
