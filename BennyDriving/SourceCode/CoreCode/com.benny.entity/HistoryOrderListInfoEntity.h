//
//  HistoryOrderListInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-25.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HistoryOrderListInfoEntity : NSObject



@property(nonatomic,retain)NSString * driHistoryOrderOrderID;//订单ID
@property(nonatomic,retain)NSString * driHistoryOrderStartServerTime;//开始代驾服务时间
@property(nonatomic,retain)NSString * driHistoryOrderEndServerTime;//停止代驾服务时间
@property(nonatomic,retain)NSString * driHistoryOrderUserName;//客户姓名
@property(nonatomic,retain)NSString * driHistoryOrderUserPhone;//客户电话
@property(nonatomic,retain)NSString * driHistoryOrderDriverName;//司机姓名
//@property(nonatomic,retain)NSString * driHistoryOrderDriverPhone;//司机电话
@property(nonatomic,retain)NSString * driHistoryOrderSubscribeStartPoint;//预约起点
@property(nonatomic,retain)NSString * driHistoryOrderSubscribeEndPoint;//预约终点
@property(nonatomic,retain)NSString * driHistoryOrderActualStartPoint;//真实起点
@property(nonatomic,retain)NSString * driHistoryOrderActualEndPoint;//真实终点
@property(nonatomic,retain)NSString * driHistoryOrderPredictMileage;//预计里程
@property(nonatomic,retain)NSString * driHistoryOrderActualMileage;//实际里程
@property(nonatomic,retain)NSString * driHistoryOrderEstimatedRevenue;//估计费用
@property(nonatomic,retain)NSString * driHistoryOrderActualRevenue;//真实费用
@property(nonatomic,retain)NSString * driHistoryOrderTaxesMoney;//扣税金额
@property(nonatomic,retain)NSString * driHistoryOrderPayType;//支付方式


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
            andHistoryPayType:(NSString *) _driHistoryOrderPayType;
@end
