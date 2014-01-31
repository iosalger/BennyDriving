//
//  DriverInfoModal.m
//  BennyDriving
//
//  Created by BennyDriving on 1/31/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import "DriverInfoModal.h"
#import "FileManagerConfig.h"
#import "ASIFormDataRequest.h"
@implementation DriverInfoModal
@synthesize files,request;

-(void)searchingDriverInfo
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/Servlet/PersonInfoServlet";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-grzlcx" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setCompletionBlock:^{
        NSData *resData = [request responseData];
        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:Nil];
        
        
        NSLog(@"%@",resDict);
    }];
    [request startAsynchronous];
}

-(void)updateLoginPassword
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/Servlet/PersonInfoServlet";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-editpass" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setPostValue:@"DriverPSD" forKey:@"psd"];
    [request setCompletionBlock:^{
        NSString *strRes = [request responseString];
        if ([strRes isEqualToString:@"0"]) {
            NSLog(@"Success");
        }else
        {
            NSLog(@"Failed");
        }
    }];
    [request startAsynchronous];
}

-(void)updateDriverInfo
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/Servlet/PersonInfoServlet";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-zlxg" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setPostValue:@"0" forKey:@"opp"];
    [request setCompletionBlock:^{
        NSString *strRes = [request responseString];
        if ([strRes isEqualToString:@"0"]) {
            NSLog(@"Success");
        }else
        {
            NSLog(@"Failed");
        }

    }];
    
    [request startAsynchronous];
    
}



@end
