//
//  DriverAccountInfo.h
//  BennyDriving
//
//  Created by BennyDriving on 1/31/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FileManagerConfig,ASIFormDataRequest;
@interface DriverAccountInfo : NSObject

@property(nonatomic,retain)FileManagerConfig *files;
@property(nonatomic,retain)ASIFormDataRequest *request;
//searching Driver Account info
-(void)searchingAccount;

//driver consume list

-(void)searchingDriverConsume;

//driver recharge list

-(void)searchDriverRecharge;

//driver take cash list

-(void)searchDriverTakeCash;

//driver apply for take cash

-(void)applyForTakeCash;

//driver account recharge

-(void)accountRecharge;

//driver pay according to account

-(void)accountPayAccording;
@end
