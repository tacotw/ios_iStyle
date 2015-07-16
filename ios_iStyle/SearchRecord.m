//
//  SearchRecord.m
//  iStyle
//
//  Created by Taco Chang on 2015/7/15.
//  Copyright (c) 2015年 Taco Chang. All rights reserved.
//

#import "SearchRecord.h"

@implementation SearchRecord


- (id)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    if (self) {
        self.title = dictionary[@"ec_title"];
        self.imageUrl = [dictionary valueForKeyPath:@"pres_data.pictureurl"];
        self.productUrl = dictionary[@"ec_item_url"];
    }
    
    return self;

}

+ (NSArray *)searchRecordsWithArray:(NSArray *)array {
    NSMutableArray *records = [NSMutableArray array];
    
    for (NSDictionary *dictionary in array) {
        [records addObject:[[SearchRecord alloc] initWithDictionary:dictionary]];
    }
    
    return records;
}

@end
