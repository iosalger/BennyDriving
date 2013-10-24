//
//  AcceptOrderInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-24.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "AcceptOrderInfoEntity.h"

@implementation AcceptOrderInfoEntity
@synthesize
driAcceptOrderOrderID,//订单ID
driAcceptOrderSubscribeTime,//预约时间
driAcceptOrderUserName,//客户名称
driAcceptOrderDriverName,//司机名称
driAcceptOrderUserPhone,//用户电话
driAcceptOrderDriverPhone,//司机电话
driAcceptOrderSubscribeStartPoint,//预约起点
driAcceptOrderSubscribeEndPoint,//预约终点
driAcceptOrderPredictMileage,//预计里程
driAcceptOrderEstimatedRevenue,//估计费用
driAcceptOrderState;//订单状态


- (id) initWithAcceptOrderOrderID:(NSString *) _driAcceptOrderID
      andAccpetOrderSubscribeTime:(NSString *) _driAcceptOrderSubscribeTime
           andAcceptOrderUserName:(NSString *) _driAcceptOrderUserName
         andAcceptOrderDriverName:(NSString *) _driAcceptOrderDriverName
          andAcceptOrderUserPhone:(NSString *) _driAcceptOrderUserPhone
        andAcceptOrderDriverPhone:(NSString *) _driAcceptOrderDriverPhone
andAcceptOrderSubscribeStartPoint:(NSString *) _driAcceptOrderSubscribeStartPoint
  andAcceptOrderSubscribeEndPoint:(NSString *) _driAcceptOrderSubscribeEndPoint
     andAcceptOrderPredictMileage:(NSString *) _driAccpetOrderPredictMileage
              andEstimatedRevenue:(NSString *) _driAcceptOrderEstimatedRevenue
         andAcceptOrderState:(NSString *) _driAcceptOrsderState
{
    self.driAcceptOrderOrderID = _driAcceptOrderID;
    self.driAcceptOrderSubscribeTime = _driAcceptOrderSubscribeTime;
    self.driAcceptOrderUserName = _driAcceptOrderUserName;
    self.driAcceptOrderDriverName = _driAcceptOrderDriverName;
    self.driAcceptOrderUserPhone = _driAcceptOrderUserPhone;
    self.driAcceptOrderDriverPhone = _driAcceptOrderDriverPhone;
    self.driAcceptOrderSubscribeStartPoint =_driAcceptOrderSubscribeStartPoint;
    self.driAcceptOrderSubscribeEndPoint = _driAcceptOrderSubscribeEndPoint;
    self.driAcceptOrderPredictMileage = _driAccpetOrderPredictMileage;
    self.driAcceptOrderEstimatedRevenue = _driAcceptOrderEstimatedRevenue;
    self.driAcceptOrderState = _driAcceptOrsderState;
    
    return self;
}
@end
