//
//  DriverInfoModal.h
//  BennyDriving
//
//  Created by BennyDriving on 1/31/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FileManagerConfig,ASIFormDataRequest;
@interface DriverInfoModal : NSObject




@property(nonatomic,retain)FileManagerConfig *files;
@property(nonatomic,retain)ASIFormDataRequest *request;

-(void)searchingDriverInfo;

-(void)updateLoginPassword;

-(void)updateDriverInfo;

@end
