//
//  RestaurantsLocationViewController.h
//  MapApp+ObjC
//
//  Created by Bashir Sentongo on 13/08/2019.
//  Copyright © 2019 Bashir Sentongo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^completion)(BOOL);

@interface RestaurantsLocationViewController : UIViewController
@property (strong, nonatomic) NSMutableArray *restaurant;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;
- (void) checkLocationAuthrizationStatus:(completion) pCompletion;

@end

NS_ASSUME_NONNULL_END
