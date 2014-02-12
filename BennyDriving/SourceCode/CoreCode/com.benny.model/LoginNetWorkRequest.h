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
@property(nonatomic,assign)BOOL loginState;
- (void) requestLoginAction:(NSMutableDictionary *) _account;

- (void) checkdeal;
@end
