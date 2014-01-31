//
//  DriverFormsListInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-23.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverOrderListPoolInfoEntity.h"

@implementation DriverOrderListPoolInfoEntity
@synthesize
driOrderDriverPredictMileage,//预计里程
driOrderDriverEstimatedRevenue,//预计费用
driOrderDriverOrderID,//订单ID
driOrderDriverSubscribeEndPoint,//预约终点
driOrderDriverSubscribeStartPoint,//预约起点1
driOrderDriverSubscribeTime,//预约时间
driOrderDriverUserName,//客户名
driOrderDriverReMark;

- (id) initWithDriverOrderID:(NSString *) _driOrderDriverOrderID
      andDriverOrderUserName:(NSString *) _driOrderDriverUserName
 andOrderDriverSubscribeTime:(NSString *) _driOrderDriverSubscribeTime
andOrderDriverSubscribeStartPoint:(NSString *) _driOrderDriverSubscribeStartPoint
andOrderDriverSubsceibeEndPoint:(NSString *) _driOrderDriverSubscribeEndpoint
andOrderDriverEstimatedRevenue:(NSString *) _driOrderDriverEstimatedRevenue
andOrderDriverPredictMileage:(NSString *) _driOrderDriverPredictMileage
     anddriOrderDriverReMark:(NSString *) _driOrderDriverReMark
{
    self.driOrderDriverOrderID = _driOrderDriverOrderID;
    self.driOrderDriverUserName = _driOrderDriverUserName;
    self.driOrderDriverSubscribeTime = _driOrderDriverSubscribeTime;
    self.driOrderDriverSubscribeStartPoint = _driOrderDriverSubscribeStartPoint;
    self.driOrderDriverSubscribeEndPoint = _driOrderDriverSubscribeEndpoint;
    self.driOrderDriverEstimatedRevenue = _driOrderDriverEstimatedRevenue;
    self.driOrderDriverPredictMileage = _driOrderDriverPredictMileage;
    self.driOrderDriverReMark = _driOrderDriverReMark;
    
    return self;
    
}
@end
