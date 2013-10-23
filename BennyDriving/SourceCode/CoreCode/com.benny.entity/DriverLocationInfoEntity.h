//
//  DriverLocationInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-23.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DriverLocationInfoEntity : NSObject


@property(nonatomic,retain)NSString * driLocationDriverIdentifyID;//司机唯一标识
@property(nonatomic,retain)NSString * driLocationDriverLongitude;//经度
@property(nonatomic,retain)NSString * driLocationDriverLatitude;//纬度
@property(nonatomic,retain)NSString * driLocationDriverStars;//星级
@property(nonatomic,retain)NSString * driLocationDriverDistance;//距离
@property(nonatomic,retain)NSString * driLocationDriverShareTime;//共享时间


- (id) initWithDriverIdentifyID:(NSString *) _driLocationDriverIdentifyID
             andDriverLongitude:(NSString *) _driLocationDriverLongitude
              andDriverLatitude:(NSString *) _driLocationDriverlatitude
                 andDriverStars:(NSString *) _driLocationDriverStars
              andDriverDistance:(NSString *) _driLocationDriverDistance
             andDriverShareTime:(NSString *) _driLocationDriverShareTime;
- (id) initWithDriverLongitude:(NSString *) _driLocationDriverLongitude
             andDriverLatitude:(NSString *) _driLocationDriverLatitude;

@end
