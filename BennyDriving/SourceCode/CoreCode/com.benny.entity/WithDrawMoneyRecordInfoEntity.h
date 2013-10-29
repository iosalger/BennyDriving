//
//  WithDrawMoneyRecordInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-29.
//  Copyright (c) 2013年 Alger. All rights reserved.
//  提现记录查询

#import <Foundation/Foundation.h>

@interface WithDrawMoneyRecordInfoEntity : NSObject

@property(nonatomic,retain)NSString * driWithDrawMoneyRecordOrderID;//提现记录订单ID
@property(nonatomic,retain)NSString * driWithDrawMoneyRecordUserName;//提现人姓名
@property(nonatomic,retain)NSString * driWithDrawMoneyRecordBankCardID;//提现银行卡帐号
@property(nonatomic,retain)NSString * driWithDrawMoneyRecordCash;//提现金额 500倍数，最低底金100 一天最高2000
@property(nonatomic,retain)NSString * driWithDrawMoneyRecordCashTime;//提现时间
@property(nonatomic,retain)NSString * driWithDrawMoneyRecordState;//提现状态  1.。申请中  2，。完成


- (id) initWithithDrawMoneyRecordOrderID:(NSString *) _driWithDrawMoneyRecordOrderID
          andWithDrawMoneyRecordUserName:(NSString *) _driWithDrawMoneyRecordUserName
        andWithDrawMoneyRecordBankCardID:(NSString *) _driWithDrawMoneyRecordBankCardID
              andWithDrawMoneyRecordCash:(NSString *) _driWithDrawMoneyRecordCash
          andWithDrawMoneyRecordCashTime:(NSString *) _driWithDrawMoneyRecordCashTime
             andWithDrawMoneyRecordState:(NSString *) _driWithDrawMoneyRecordState;

@end
