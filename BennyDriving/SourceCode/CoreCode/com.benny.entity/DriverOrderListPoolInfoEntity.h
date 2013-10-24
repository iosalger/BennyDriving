//
//  DriverFormsListInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-23.
//  Copyright (c) 2013年 Alger. All rights reserved.
//  抢单池

#import <Foundation/Foundation.h>

@interface DriverOrderListPoolInfoEntity : NSObject

@property(nonatomic,retain)NSString * driOrderDriverOrderID;//订单ID
@property(nonatomic,retain)NSString * driOrderDriverUserName;//客户名称
@property(nonatomic,retain)NSString * driOrderDriverSubscribeTime;//预约时间
@property(nonatomic,retain)NSString * driOrderDriverSubscribeStartPoint;//预约起点
@property(nonatomic,retain)NSString * driOrderDriverSubscribeEndPoint;//预约终点
@property(nonatomic,retain)NSString * driOrderDriverEstimatedRevenue;//估计费用
@property(nonatomic,retain)NSString * driOrderDriverPredictMileage;//预计里程




- (id) initWithDriverOrderID:(NSString *) _driOrderDriverOrderID
      andDriverOrderUserName:(NSString *) _driOrderDriverUserName
 andOrderDriverSubscribeTime:(NSString *) _driOrderDriverSubscribeTime
andOrderDriverSubscribeStartPoint:(NSString *) _driOrderDriverSubscribeStartPoint
andOrderDriverSubsceibeEndPoint:(NSString *) _driOrderDriverSubscribeEndpoint
andOrderDriverEstimatedRevenue:(NSString *) _driOrderDriverEstimatedRevenue
andOrderDriverPredictMileage:(NSString *) _driOrderDriverPredictMileage;
@end
