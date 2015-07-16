//
//  YqlClient.h
//  iStyle
//
//  Created by Taco Chang on 2015/7/14.
//  Copyright (c) 2015年 Taco Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YqlClient : NSObject

@property (nonatomic, retain) NSMutableData *responseData;

- (void)searchWithCluster:(NSArray *)keywords clusterName:(NSString *)clusterName delegate:(id)target;

@end
