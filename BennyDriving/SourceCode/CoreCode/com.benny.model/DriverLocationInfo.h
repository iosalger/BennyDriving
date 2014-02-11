//
//  DriverLocationInfo.h
//  BennyDriving
//
//  Created by BennyDriving on 1/31/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@class FileManagerConfig,ASIFormDataRequest;


@interface DriverLocationInfo : NSObject<CLLocationManagerDelegate>


@property(nonatomic,retain)FileManagerConfig *files;
@property(nonatomic,retain)ASIFormDataRequest *request;
//@property(nonatomic,retain)CLLocationManager *locationManager;

//get Location
- (void) driverLocation:(CLLocationCoordinate2D) _location;
//cancel Location
- (void) cancelLocation;

-(void)LocationGPS;

@end
