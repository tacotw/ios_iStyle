//
//  Collage.h
//  ios_iStyle
//
//  Created by Saker Lin on 2015/7/15.
//  Copyright (c) 2015年 Saker Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Collage : NSObject

@property (nonatomic, readonly) NSArray *relativeFrames;
@property (nonatomic, copy) NSString *previewImageName;
@property (nonatomic) CGFloat ratio;

- (UIImage *)previewImage;
- (void)enumerateRelativeFramesUsingBlock:(void (^)(CGRect relativeFrame, NSUInteger index))block;
+ (NSArray *)objectsWithDicionaries:(NSArray *)JSONObjects;
+ (instancetype)objectWithDictionary:(NSDictionary *)dict;
+ (NSArray *)collages;
@end
