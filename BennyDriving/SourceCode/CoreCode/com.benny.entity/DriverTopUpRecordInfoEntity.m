//
//  TopUpRecordInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-25.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverTopUpRecordInfoEntity.h"

@implementation DriverTopUpRecordInfoEntity

@synthesize

driTopUpRaiseTimeOfApplication,//提出申请时间
driTopUpRechargeOrderID,//充值订单号
driTopUpRechargeMoney,//充值金额
driTopUpRechargeUserState,//充值用户状态
driTopUpRechargeUserName,//充值用户姓名
driTopUpAffiliationBank,//银行
driTopUpRechargeType;//充值类型





- (id) initWithTopUpReiseTimeOfApplication:(NSString *) _driTopUpRaiseTimeOfApplication
                   andTopUpRechargeOrderID:(NSString *) _driTopUpRechargeOrderID
                     andTopUpRechargeMoney:(NSString *) _driTopUpRechargeMoney
                 andTopUpRechargeUserState:(NSString *) _driTopUpRechargeUserState
                  andTopUpRechargeUserName:(NSString *) _driTopUpRechargeUserName
                   andTopUpAffiliationBank:(NSString *) _driTopUpAffiliationBank
                      andTopUpRechargeType:(NSString *) _driTopUpRechargeType
{
    self.driTopUpRaiseTimeOfApplication = _driTopUpRaiseTimeOfApplication;
    self.driTopUpRechargeOrderID = _driTopUpRechargeOrderID;
    self.driTopUpRechargeMoney = _driTopUpRechargeMoney;
    self.driTopUpRechargeUserState = _driTopUpRechargeUserState;
    self.driTopUpRechargeUserName = _driTopUpRechargeUserName;
    self.driTopUpAffiliationBank = _driTopUpAffiliationBank;
    self.driTopUpRechargeType  = _driTopUpRechargeType;
    
    return self;
    
}



@end
