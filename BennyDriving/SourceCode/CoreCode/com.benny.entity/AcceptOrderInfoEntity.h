//
//  AcceptOrderInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-24.
//  Copyright (c) 2013年 Alger. All rights reserved.
//     已接订单

#import <Foundation/Foundation.h>

@interface AcceptOrderInfoEntity : NSObject


@property(nonatomic,retain)NSString * driAcceptOrderOrderID;//订单ID
@property(nonatomic,retain)NSString * driAcceptOrderSubscribeTime;//预约时间
@property(nonatomic,retain)NSString * driAcceptOrderUserName;//客户名称
@property(nonatomic,retain)NSString * driAcceptOrderDriverName;//司机名称
@property(nonatomic,retain)NSString * driAcceptOrderUserPhone;//用户电话
@property(nonatomic,retain)NSString * driAcceptOrderDriverPhone;//司机电话
@property(nonatomic,retain)NSString * driAcceptOrderSubscribeStartPoint;//预约起点
@property(nonatomic,retain)NSString * driAcceptOrderSubscribeEndPoint;//预约终点
@property(nonatomic,retain)NSString * driAcceptOrderPredictMileage;//预计里程
@property(nonatomic,retain)NSString * driAcceptOrderEstimatedRevenue;//估计费用
@property(nonatomic,retain)NSString * driAcceptOrderState;//订单状态


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
         andAcceptOrderState:(NSString *) _driAcceptOrsderState;
@end
