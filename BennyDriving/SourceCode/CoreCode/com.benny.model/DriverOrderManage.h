//
//  DriverOrderManage.h
//  BennyDriving
//
//  Created by BennyDriving on 1/31/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FileManagerConfig;
@class ASIFormDataRequest;
@interface DriverOrderManage : NSObject


@property(nonatomic,retain)FileManagerConfig *files;
@property(nonatomic,retain)ASIFormDataRequest *request;

//order pool
- (void)CheckOrderPool;
//forestall order
- (void)forestallOrder;
//order subscribe
- (void)subscribeOrder;
//History order
- (void)historyOrder;
@end
