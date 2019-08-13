//
//  Restaurant.m
//  MapApp+ObjC
//
//  Created by Bashir Sentongo on 13/08/2019.
//  Copyright © 2019 Bashir Sentongo. All rights reserved.
//

#import "Restaurant.h"

@implementation Restaurant

- (instancetype)initWithName: (NSString*)name latitude:(NSString*)latitude longitude:(NSString*)longitude body:(NSString*)body deliveryLink:(NSString*)deliveryLink {
    if (self = [super init]) {
        self.name = name;
        self.latitude = latitude;
        self.longitude = longitude;
        self.body = body;
        self.deliveryLink = deliveryLink;
    }
    return self;
}

@end
