//
//  YqlClient.m
//  iStyle
//
//  Created by Taco Chang on 2015/7/14.
//  Copyright (c) 2015年 Taco Chang. All rights reserved.
//

#import "YqlClient.h"

@implementation YqlClient

- (void)searchWithCluster:(NSArray *)keywords clusterName:(NSString *)clusterName delegate:(id)target {
    NSLog(@"start");
    self.responseData = [NSMutableData new];
    
    /*NSString *keyword = [keywords componentsJoinedByString:@" "];
    NSMutableString *query = [NSMutableString string];
    [query appendString:[NSString stringWithFormat:@"SELECT * FROM oneecsearch.search WHERE keyword='%@' and property='shopping'", keyword]];
    if (clusterName != nil) {
        [query appendString:[NSString stringWithFormat:@" and flc='%@'",clusterName]];
    }
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://ec.yql.yahoo.com:4080/v1/public/yql?q=%@&format=json", query]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:60.0];
    
    [request setHTTPMethod:@"GET"];
    (void)[[NSURLConnection alloc] initWithRequest:request delegate:self];*/
    
    
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:60.0];
    
    [request setHTTPMethod:@"GET"];
    
    [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

#pragma mark - NSURLConnection

- (void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    [self.responseData setLength:0];
}

- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [self.responseData appendData:data];
}

- (void) connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"!!! %@", self.responseData);
}

- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"!!!something very bad happened here: %@", error);
}
@end
