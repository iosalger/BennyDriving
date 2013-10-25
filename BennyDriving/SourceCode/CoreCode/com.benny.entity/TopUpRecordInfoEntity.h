//
//  TopUpRecordInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-25.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TopUpRecordInfoEntity : NSObject

@property(nonatomic,retain)NSString *recharge;
@property(nonatomic,retain)NSString * driTopUpRaiseTimeOfApplication;//提出申请时间
@property(nonatomic,retain)NSString * driTopUpRechargeOrderID;//充值订单号
@property(nonatomic,retain)NSString * driTopUpRechargeMoney;//充值金额
@property(nonatomic,retain)NSString * driTopUpRechargeUserState;//充值用户状态
@property(nonatomic,retain)NSString * driTopUpRechargeUserName;//充值用户姓名
@property(nonatomic,retain)NSString * driTopUpAffiliationBank;//银行
@property(nonatomic,retain)NSString * driTopUpRechargeType;//充值类型





- (id) initWithTopUpReiseTimeOfApplication:(NSString *) _driTopUpRaiseTimeOfApplication
                   andTopUpRechargeOrderID:(NSString *) _driTopUpRechargeOrderID
                     andTopUpRechargeMoney:(NSString *) _driTopUpRechargeMoney
                 andTopUpRechargeUserState:(NSString *) _driTopUpRechargeUserState
                  andTopUpRechargeUserName:(NSString *) _driTopUpRechargeUserName
                   andTopUpAffiliationBank:(NSString *) _driTopUpAffiliationBank
                      andTopUpRechargeType:(NSString *) _driTopUpRechargeType;


@end
