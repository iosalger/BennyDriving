//
//  DriverAdditionInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-23.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverAdditionInfoEntity.h"

@implementation DriverAdditionInfoEntity
@synthesize
driDriverAdditionDrivingCount,//代驾次数
driDriverAdditionDriverName,//司机姓名
driDriverAdditionDrivingYears,//司机驾龄
driDriverAdditionDriverGrade; ///司机评分

- (id) initWithDriverAdditionDrivingCount:(NSString *) _driDriverAdditionDrivingCount
              andDriverAdditionDriverName:(NSString *) _driDriverAdditionDriverName
            andDriverAdditionDrivingYears:(NSString *) _driDriverAdditionDrivingYears
             andDriverAdditionDriverGrade:(NSString *) _driDriverAdditionDriverGrade
{
    self.driDriverAdditionDrivingCount = _driDriverAdditionDrivingCount;
    self.driDriverAdditionDriverName = _driDriverAdditionDriverName;
    self.driDriverAdditionDrivingYears = _driDriverAdditionDrivingYears;
    self.driDriverAdditionDriverGrade = _driDriverAdditionDriverGrade;

    return self;
}
@end
