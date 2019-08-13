//
//  Restaurant.h
//  MapApp+ObjC
//
//  Created by Bashir Sentongo on 13/08/2019.
//  Copyright © 2019 Bashir Sentongo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Restaurant : NSObject
@property NSString *name;
@property NSString *latitude;
@property  NSString *longitude;
@property (nullable) NSString *body;
@property  (nullable) NSString *deliveryLink;
- (instancetype)initWithName: (NSString*)name latitude:(NSString*)latitude longitude:(NSString*)longitude body:(NSString*)body deliveryLink:(NSString*)deliveryLink;
@end

NS_ASSUME_NONNULL_END
