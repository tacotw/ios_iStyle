//
//  SearchRecord.h
//  iStyle
//
//  Created by Taco Chang on 2015/7/15.
//  Copyright (c) 2015年 Taco Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SearchRecord : NSObject

@property (nonatomic, strong) NSString *imageUrl;
@property (nonatomic, strong) NSString *productUrl;
@property (nonatomic, strong) NSString *title;

- (id)initWithDictionary:(NSDictionary *)dictionary;

+ (NSArray *)searchRecordsWithArray:(NSArray *)array;

@end
