//
//  WithDrawMoneyRecordInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-29.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverWithDrawMoneyRecordInfoEntity.h"

@implementation DriverWithDrawMoneyRecordInfoEntity

@synthesize 
 driWithDrawMoneyRecordOrderID,//提现记录订单ID
 driWithDrawMoneyRecordUserName,//提现人姓名
 driWithDrawMoneyRecordBankCardID,//提现银行卡帐号
 driWithDrawMoneyRecordCash,//提现金额 500倍数，最低底金100 一天最高2000
 driWithDrawMoneyRecordCashTime,//提现时间
 driWithDrawMoneyRecordState;//提现状态  1.。申请中  2，。完成


- (id) initWithithDrawMoneyRecordOrderID:(NSString *) _driWithDrawMoneyRecordOrderID
          andWithDrawMoneyRecordUserName:(NSString *) _driWithDrawMoneyRecordUserName
        andWithDrawMoneyRecordBankCardID:(NSString *) _driWithDrawMoneyRecordBankCardID
              andWithDrawMoneyRecordCash:(NSString *) _driWithDrawMoneyRecordCash
          andWithDrawMoneyRecordCashTime:(NSString *) _driWithDrawMoneyRecordCashTime
             andWithDrawMoneyRecordState:(NSString *) _driWithDrawMoneyRecordState
{

    self.driWithDrawMoneyRecordOrderID  = _driWithDrawMoneyRecordOrderID;
    self.driWithDrawMoneyRecordUserName = _driWithDrawMoneyRecordUserName;
    self.driWithDrawMoneyRecordBankCardID = _driWithDrawMoneyRecordBankCardID;
    self.driWithDrawMoneyRecordCash = _driWithDrawMoneyRecordCash;
    self.driWithDrawMoneyRecordCashTime = _driWithDrawMoneyRecordCashTime;
    self.driWithDrawMoneyRecordState = _driWithDrawMoneyRecordState;
    
    return self;

}



@end
