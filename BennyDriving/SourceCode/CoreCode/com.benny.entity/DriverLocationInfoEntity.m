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
driLocationDriverIdentifyID,//司机唯一标识
driLocationDriverLongitude,//经度
driLocationDriverLatitude,//纬度
driLocationDriverStars,//星级
driLocationDriverDistance,//距离
driLocationDriverShareTime;//共享时间

- (id) initWithDriverIdentifyID:(NSString *) _driLocationDriverIdentifyID
             andDriverLongitude:(NSString *) _driLocationDriverLongitude
              andDriverLatitude:(NSString *) _driLocationDriverlatitude
                 andDriverStars:(NSString *) _driLocationDriverStars
              andDriverDistance:(NSString *) _driLocationDriverDistance
             andDriverShareTime:(NSString *) _driLocationDriverShareTime
{
    
    self.driLocationDriverIdentifyID  = _driLocationDriverIdentifyID;
    self.driLocationDriverLongitude   = _driLocationDriverLongitude;
    self.driLocationDriverLatitude    = _driLocationDriverlatitude;
    self.driLocationDriverStars = _driLocationDriverStars;
    self.driLocationDriverShareTime = _driLocationDriverShareTime;
    self.driLocationDriverDistance = _driLocationDriverDistance;
    
    return self;
    
}
#pragma mark -
#pragma mark get Longitude&Latitude
- (id) initWithDriverLongitude:(NSString *) _driLocationDriverLongitude
             andDriverLatitude:(NSString *) _driLocationDriverLatitude
{
    
    self.driLocationDriverLongitude = _driLocationDriverLongitude;
    self.driLocationDriverLatitude = _driLocationDriverLatitude;
    
    return self;
    
}
@end
