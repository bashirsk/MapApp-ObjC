//
//  APIService.m
//  MapApp+ObjC
//
//  Created by Bashir Sentongo on 20/08/2019.
//  Copyright © 2019 Bashir Sentongo. All rights reserved.
//

#import "APIService.h"

@implementation APIService

+ (void)fetchRestaurants: (void(^)(NSDictionary *responseDict))success failure:(void(^)(NSError* error))failure {
    NSString *urlStirng = @"https://www.frankieandbennys.com/trg_restaurant_feed/JSON";
    NSURL *url = [NSURL URLWithString:urlStirng];
    NSURLSession *urlSession = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [urlSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            failure(error);
        } else {
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSLog(@"%@", json);
            success(json);
        }
    }];
    [dataTask resume];
}

@end

