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


- (void) requestLoginAction
{
    // NSString *strURL = [NSString stringWithFormat:@"%@benny_driving/servlet/LoginServlet",ROOT_URL];
    // NSString *strURL = @"http://abc.4008200972.com/benny_driving/servlet/LoginServlet";
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/servlet/LoginServlet";
    NSURL *url = [NSURL URLWithString:strURL];
    // NSLog(@"%@",url);
    ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-login" forKey:@"action"];
    [request setPostValue:@"sh000311" forKey:@"acc"];
    [request setPostValue:@"123456" forKey:@"psd"];
    [request setPostValue:@"0.0.1" forKey:@"dri_version"];
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
        FileManagerConfig *files = [[FileManagerConfig alloc]init];
        [files createFile];
        [files writeContent:JSessionID];
        [files readFile];
        NSData *data = [request responseData];
        NSNumber *Dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",Dict);
        int response = [Dict intValue];
        if (response == 0) {
            
            NSLog(@"Login Success!");
            
        } else {
            
            NSLog(@"Login failed!");
            
        }
        
        
    }];
    [request startAsynchronous];
    
    
}

@end
