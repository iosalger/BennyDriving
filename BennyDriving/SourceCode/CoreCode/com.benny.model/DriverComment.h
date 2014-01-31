//
//  DriverComment.h
//  BennyDriving
//
//  Created by BennyDriving on 1/31/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FileManagerConfig,ASIFormDataRequest;
@interface DriverComment : NSObject


@property(nonatomic,retain)FileManagerConfig *files;
@property(nonatomic,retain)ASIFormDataRequest *request;




-(void)searchUserComment;

-(void)commentInDriverInfo;

-(void)searchInformation;

-(void)requestContent;

@end
