//
//  DriverConsumptionRecordInfo.h
//  BennyDriving
//
//  Created by Alger on 13-10-23.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DriverConsumptionRecordInfoEntity : NSObject



@property(nonatomic,assign)NSNumber * driDriverConsumptionID;//消费记录ID
@property(nonatomic,assign)NSNumber * driDriverOrderNumber;//订单编号

- (id) initWithDriverConsumptionID:(NSNumber *) _driverConsumptionID
              andDriverOrderNumber:(NSNumber *) _driverOrderNumber;



@end
