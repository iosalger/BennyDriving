//
//  HistoryOrderListInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-25.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "HistoryOrderListInfoEntity.h"

@implementation HistoryOrderListInfoEntity

@synthesize 
 driHistoryOrderOrderID,//订单ID
 driHistoryOrderStartServerTime,//开始代驾服务时间
 driHistoryOrderEndServerTime,//停止代驾服务时间
 driHistoryOrderUserName,//客户姓名
 driHistoryOrderUserPhone,//客户电话
 driHistoryOrderDriverName,//司机姓名
 driHistoryOrderSubscribeStartPoint,//预约起点
 driHistoryOrderSubscribeEndPoint,//预约终点
 driHistoryOrderActualStartPoint,//真实起点
 driHistoryOrderActualEndPoint,//真实终点
 driHistoryOrderPredictMileage,//预计里程
 driHistoryOrderActualMileage,//实际里程
 driHistoryOrderEstimatedRevenue,//估计费用
 driHistoryOrderActualRevenue,//真实费用
 driHistoryOrderTaxesMoney,//扣税金额
 driHistoryOrderPayType;//支付方式


- (id) initWithHistoryOrderID:(NSString *) _driHistoryOrderOrderID
    andHistoryStartServerTime:(NSString *) _driHistoryOrderStartServerTime
      andHistoryEndServerTime:(NSString *) _driHistoryOrderEndServerTime
           andHistoryUserName:(NSString *) _driHistoryOrderUserName
          andHistoryUserPhone:(NSString *) _driHistoryOrderUserPhone
         andHistoryDriverName:(NSString *) _driHistoryOrderDriverName
andHistorySubscribeStartPoint:(NSString *) _driHistoryOrderSubscribeStartPoint
  andHistorySubscribeEndPoint:(NSString *) _driHistoryOrderSubscribeEndPoint
   andHistoryActualStartPoint:(NSString *) _driHistoryOrderActualStartPoint
     andHistoryActualEndPoint:(NSString *) _driHistoryOrderActualEndPoint
      andHistoryPredicMileage:(NSString *) _driHistoryOrderPredictMileage
      andHistoryActualMileage:(NSString *) _driHistoryOrderActualMileage
   andHistoryEstimatedRevenue:(NSString *) _driHistoryOrderEstimatedRevenue
      andHistoryActualRevenue:(NSString *) _driHistoryOrderActualRevenue
         andHistoryTaxesMoney:(NSString *) _driHistoryOrderTaxesMoney
            andHistoryPayType:(NSString *) _driHistoryOrderPayType
{
    
    self.driHistoryOrderOrderID = _driHistoryOrderOrderID;
    self.driHistoryOrderStartServerTime = _driHistoryOrderStartServerTime;
    self.driHistoryOrderEndServerTime = _driHistoryOrderEndServerTime;
    self.driHistoryOrderUserName = _driHistoryOrderUserName;
    self.driHistoryOrderUserPhone = _driHistoryOrderUserPhone;
    self.driHistoryOrderDriverName =_driHistoryOrderDriverName;
    self.driHistoryOrderSubscribeStartPoint = _driHistoryOrderActualStartPoint;
    self.driHistoryOrderSubscribeEndPoint = _driHistoryOrderSubscribeEndPoint;
    self.driHistoryOrderActualStartPoint = _driHistoryOrderActualStartPoint;
    self.driHistoryOrderActualEndPoint = _driHistoryOrderActualEndPoint;
    self.driHistoryOrderPredictMileage = _driHistoryOrderPredictMileage;
    self.driHistoryOrderActualMileage = _driHistoryOrderActualMileage;
    self.driHistoryOrderEstimatedRevenue = _driHistoryOrderEstimatedRevenue;
    self.driHistoryOrderActualRevenue = _driHistoryOrderActualRevenue;
    self.driHistoryOrderTaxesMoney = _driHistoryOrderTaxesMoney;
    self.driHistoryOrderPayType = _driHistoryOrderPayType;

    return self;

}

@end
