//
//  DriverLocationInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-23.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverLocationInfoEntity.h"

@implementation DriverLocationInfoEntity

@synthesize
    driLocationDriverIdentifyID,
    driLocationDriverLongitude,
    driLocationDriverLatitude,
    driLocationDriverStars,
    driLocationDriverDistance,
    driLocationDriverShareTime;

- (id) initWithDriverIdentifyID:(NSString *) _driLocationDriverIdentifyID
             andDriverLongitude:(NSString *) _driLocationDriverLongitude
              andDriverLatitude:(NSString *) _driLocationlatitude
                 andDriverStars:(NSString *) _driLocationStars
              andDriverDistance:(NSString *) _driLocationDistance
             andDriverShareTime:(NSString *) _driLocationShareTime
{

    self.driLocationDriverIdentifyID  = _driLocationDriverIdentifyID;
    self.driLocationDriverLongitude   = _driLocationDriverLongitude;
    self.driLocationDriverLatitude    = _driLocationlatitude;
    self.driLocationDriverStars = _driLocationStars;
    self.driLocationDriverShareTime = _driLocationShareTime;
    self.driLocationDriverDistance = _driLocationDistance;

    return self;

}

@end
