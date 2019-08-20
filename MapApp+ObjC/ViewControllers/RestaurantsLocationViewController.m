//
//  RestaurantsLocationViewController.m
//  MapApp+ObjC
//
//  Created by Bashir Sentongo on 13/08/2019.
//  Copyright © 2019 Bashir Sentongo. All rights reserved.
//

#import "RestaurantsLocationViewController.h"
#import "APIService.h"

@interface RestaurantsLocationViewController ()

@end

typedef void(^completion)(BOOL);

@implementation RestaurantsLocationViewController

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
    
    [APIService fetchRestaurants:^(NSDictionary * _Nonnull responseDict) {
        NSLog(@"%@", responseDict);
    } failure:^(NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
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


