//
//  DriverLoginInfo.m
//  BennyDriving
//
//  Created by Alger on 13-10-18.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverLoginInfo.h"

@implementation DriverLoginInfo

@synthesize
driLoginDriverIdentifyId,//司机唯一标识符
driLoginSignAnAgreement,//协议签订
driLoginTopUpConditions,//充值条件
driLoginDriverState,//司机状态
driLoginDriverGPSState;//GPS状态

-(id) initWithdriLoginDriverIdentifyId:(NSString *) _driLoginDriverIdentifyId
            anddriLoginSignAnAgreement:(NSString *) _driLoginSignAnAgreement
            anddriLoginTopUpConditions:(NSString *) _driLoginTopUpConditions
                anddriLoginDriverState:(NSString *) _driLoginDriverState
             anddriLoginDriverGPSState:(NSString *) _driLoginDriverGPSState
{
    
    self.driLoginDriverIdentifyId = _driLoginDriverIdentifyId;
    self.driLoginSignAnAgreement = _driLoginSignAnAgreement;
    self.driLoginTopUpConditions = _driLoginTopUpConditions;
    self.driLoginDriverState = _driLoginDriverState;
    self.driLoginDriverGPSState = _driLoginDriverGPSState;
    
    return self;
    
}



@end
