//
//  main.m
//  MapApp+ObjC
//
//  Created by Bashir Sentongo on 13/08/2019.
//  Copyright © 2019 Bashir Sentongo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Models/Restaurant.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // Used for testing purposes
        Restaurant *resaurant = [[Restaurant alloc] initWithName:@"Mitcham" latitude:@"-20.300000" longitude:@"-14.332500" body:@"Body" deliveryLink:@"SomeLink"];
        NSLog(@"%@", [resaurant latitude]);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
