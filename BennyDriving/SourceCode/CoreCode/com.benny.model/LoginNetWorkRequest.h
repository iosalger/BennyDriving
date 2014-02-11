//
//  LoginNetWorkRequest.h
//  BennyDriving
//
//  Created by BennyDriving on 1/21/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FileManagerConfig;
@class ASIFormDataRequest;
@interface LoginNetWorkRequest : NSObject
{

    BOOL loginState;

}


@property(nonatomic,retain)FileManagerConfig *files;
@property(nonatomic,retain)ASIFormDataRequest *request;
- (BOOL) requestLoginAction;

- (void) checkdeal;
@end
