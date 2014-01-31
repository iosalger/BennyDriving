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


@interface DriverLocationInfo : NSObject


@property(nonatomic,retain)FileManagerConfig *files;
@property(nonatomic,retain)ASIFormDataRequest *request;

//get Location
- (void) driverLocation:(MKMapView *) _mapView;
//cancel Location
- (void) cancelLocation;

@end
