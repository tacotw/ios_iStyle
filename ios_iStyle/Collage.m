//
//  Collage.m
//  ios_iStyle
//
//  Created by Saker Lin on 2015/7/15.
//  Copyright (c) 2015年 Saker Lin. All rights reserved.
//

#import "Collage.h"
@interface Collage ()

@property (nonatomic, strong) NSArray *relativeFrames;

@end

@implementation Collage



+ (NSArray *)collages {
    static NSArray *_collages = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _collages = [self loadCollages];
    });
    
    return _collages;
}

+ (NSArray *)loadCollages {
    NSArray *collagesDicts = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Collages" ofType:@"plist"]];
    return [self objectsWithDicionaries:collagesDicts];
}
+ (NSArray *)objectsWithDicionaries:(NSArray *)JSONObjects {
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:[JSONObjects count]];
    [JSONObjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [result addObject:[self objectWithDictionary:obj]];
    }];
    return [result copy];
}


+ (instancetype)objectWithDictionary:(NSDictionary *)dict {
    return [[[self class] alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    if ((self = [super init])) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (UIImage *)previewImage {
    return [UIImage imageNamed:self.previewImageName];
}

- (void)enumerateRelativeFramesUsingBlock:(void (^)(CGRect relativeFrame, NSUInteger index))block {
    [self.relativeFrames enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
          
        if (block) {
            block([obj CGRectValue], idx);
        }
    }];
}

- (void)setRelativeFramesStrings:(NSArray *)relativeFramesStrings {
    NSMutableArray *result = [NSMutableArray new];
    [relativeFramesStrings enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [result addObject:[NSValue valueWithCGRect:CGRectFromString(obj)]];
    }];
    self.relativeFrames = [result copy];
}
@end
