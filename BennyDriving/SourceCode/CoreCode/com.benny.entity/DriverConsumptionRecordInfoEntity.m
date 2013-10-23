//
//  DriverConsumptionRecordInfo.m
//  BennyDriving
//
//  Created by Alger on 13-10-23.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverConsumptionRecordInfoEntity.h"

@implementation DriverConsumptionRecordInfoEntity
@synthesize
driDriverConsumptionID,//消费记录ID
driDriverOrderNumber;//订单编号

- (id) initWithDriverConsumptionID:(NSNumber *) _driverConsumptionID
              andDriverOrderNumber:(NSNumber *) _driverOrderNumber
{

    self.driDriverConsumptionID = _driverConsumptionID;
    self.driDriverOrderNumber = _driverOrderNumber;

    return self;
}

@end
