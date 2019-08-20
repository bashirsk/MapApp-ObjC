//
//  APIService.h
//  MapApp+ObjC
//
//  Created by Bashir Sentongo on 20/08/2019.
//  Copyright © 2019 Bashir Sentongo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface APIService : NSObject

+ (void)fetchRestaurants:(void(^)(NSDictionary *responseDict))success failure:(void(^)(NSError* error))failure;

@end

NS_ASSUME_NONNULL_END
