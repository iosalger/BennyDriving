//
//  DriverLoginInfo.h
//  BennyDriving
//
//  Created by Alger on 13-10-18.
//  Copyright (c) 2013年 Alger. All rights reserved.
// 

#import <Foundation/Foundation.h>

@interface DriverLoginInfo : NSObject


@property(nonatomic,retain)NSString * driLoginDriverIdentifyId;//司机唯一标识符
@property(nonatomic,retain)NSString * driLoginSignAnAgreement;//协议签订
@property(nonatomic,retain)NSString * driLoginTopUpConditions;//充值条件
@property(nonatomic,retain)NSString * driLoginDriverState;//司机状态
@property(nonatomic,retain)NSString * driLoginDriverGPSState;//GPS状态
-(id) initWithdriLoginDriverIdentifyId:(NSString *) _driLoginDriverIdentifyId
            anddriLoginSignAnAgreement:(NSString *) _driLoginSignAnAgreement
            anddriLoginTopUpConditions:(NSString *) _driLoginTopUpConditions
                anddriLoginDriverState:(NSString *) _driLoginDriverState
             anddriLoginDriverGPSState:(NSString *) _driLoginDriverGPSState;
@end
 