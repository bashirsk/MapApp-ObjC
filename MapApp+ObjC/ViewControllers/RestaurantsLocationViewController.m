//
//  RestaurantsLocationViewController.m
//  MapApp+ObjC
//
//  Created by Bashir Sentongo on 13/08/2019.
//  Copyright © 2019 Bashir Sentongo. All rights reserved.
//

#import "RestaurantsLocationViewController.h"
#import "APIService.h"
#import "Restaurant.h"

@interface RestaurantsLocationViewController ()

@end

typedef void(^completion)(BOOL);

@implementation RestaurantsLocationViewController {
    
}

- (void)fetchRestarants {
    [APIService fetchRestaurantData:^(NSDictionary * _Nonnull responseDict) {
        self.restaurant = [[NSMutableArray alloc] init];
        for (NSDictionary *results in responseDict) {
            NSString *name = [results objectForKey:@"name"];
            NSString *latitude = [results objectForKey:@"latitude"];
            NSString *longitude = [results objectForKey:@"longitude"];
            NSString *body = [results objectForKey:@"body"];
            Restaurant *restaurant = [[Restaurant alloc] init];
            restaurant.name = name;
            restaurant.latitude = latitude;
            restaurant.longitude = longitude;
            restaurant.body = body;
            [self.restaurant addObject:restaurant];
        }
    } failure:^(NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _locationManager = [[CLLocationManager alloc] init];
    [self checkLocationAuthrizationStatus:^(BOOL pGranted) {
        if (pGranted) {
            self.mapView.showsUserLocation = YES;
        } else {
            [self.locationManager requestWhenInUseAuthorization];
        }
    }];
    
    [self fetchRestarants];
}

- (void) checkLocationAuthrizationStatus:(completion) pCompletion {
    switch([CLLocationManager authorizationStatus]) {
        case kCLAuthorizationStatusAuthorizedWhenInUse:
            pCompletion(YES);
            break;
        default:
            pCompletion(NO);
    }
}

@end


