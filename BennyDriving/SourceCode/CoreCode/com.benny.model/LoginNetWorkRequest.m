//
//  LoginNetWorkRequest.m
//  BennyDriving
//
//  Created by BennyDriving on 1/21/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import "LoginNetWorkRequest.h"
#import "URLInfomationHeader.h"
#import "ASIFormDataRequest.h"
#import "FileManagerConfig.h"

@interface LoginNetWorkRequest()


@end

@implementation LoginNetWorkRequest
@synthesize files,request,loginState;

- (void) requestLoginAction:(NSMutableDictionary *) _account
{
    @autoreleasepool {
        
    
        NSString *strURL = @"http://10.0.0.110:8080/benny_driving/servlet/LoginServlet";
        NSURL *url = [NSURL URLWithString:strURL];
    
        request = [ASIFormDataRequest requestWithURL:url];
    
        NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
        [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
        [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    
        [request setRequestHeaders:mtbDict];
        request.delegate = self;
        [request setPostValue:@"dri-login" forKey:@"action"];
        [request setPostValue:[_account objectForKey:@"UserName"] forKey:@"acc"];
        [request setPostValue:[_account objectForKey:@"PassWord"] forKey:@"psd"];
        [request setPostValue:@"0.0.1" forKey:@"dri_version"];
       // [request set]
        [request setCompletionBlock:^{
            NSArray *cookies = [request responseCookies];
            NSString *JSessionID = nil;
            for (NSHTTPCookie *cookie in cookies) {
            
                if ([[cookie name ] isEqualToString : @"JSESSIONID" ]) {
                
                    NSLog ( @"session name:%@,value:%@" ,[cookie name ],[cookie value ]);
                
                    JSessionID = [cookie value];
                
                    NSLog(@"JSESSIONID:%@",JSessionID);
                
                }
            }
            
            files = [[FileManagerConfig alloc]init];
            
            [files createFile];
            
            [files writeContent:JSessionID];
            
            [files readFile];
            
            NSData *data = [request responseData];
            
            NSNumber *Dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
            NSLog(@"%@",Dict);
            int response = [Dict intValue];
            
            if (response == 0) {
            
                NSLog(@"Login Success!");
                loginState = YES;
                //  return loginState;
            } else if(Dict == NULL){
            
                NSLog(@"Check Internet Connection!");
            
            }else if(response == -1){
            
                NSLog(@"Checking Account & Password!");
            
            }
        
        }];
        
       
       // [request setFailedBlock:^{
            
          //  NSError *error = [request error];
            
        //    NSLog(@”%@”,[error localizedDescription]);
            
      //  }];
    [request startAsynchronous];
        NSError *error = [request error];
        if (!error) {
            
            NSLog(@"%@",[error localizedDescription]);
        }
        
    //return loginState;
    }

}


- (void)checkdeal
{
    @autoreleasepool {
        

    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/servlet/LoginServlet";
    NSURL *url = [NSURL URLWithString:strURL];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:url];
    
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    
    
    
    [request setPostValue:@"dri-qdxy" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setPostValue:@"dealIdentify" forKey:@"agrid"];
    [request setCompletionBlock:^{
       NSString *resStr = [request responseString];
        NSLog(@"resStr%@",resStr);
        
    }];
    [request startAsynchronous];
    
    }
}





@end
