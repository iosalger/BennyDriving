//
//  DriverComment.m
//  BennyDriving
//
//  Created by BennyDriving on 1/31/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import "DriverComment.h"
#import "FileManagerConfig.h"
#import "ASIFormDataRequest.h"
#define ROOT_URL @"http://10.0.0.110:8080/benny_driving/CommentServlet/"
@implementation DriverComment
@synthesize files,request;


-(void)searchUserComment
{
    NSURL *URL = [NSURL URLWithString:ROOT_URL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-yhpj" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setCompletionBlock:^{
        NSData *resData = [request responseData];
        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",resDict);
    
    }];
    [request startAsynchronous];
}

-(void)commentInDriverInfo
{
    NSURL *URL = [NSURL URLWithString:ROOT_URL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-xgxx" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setCompletionBlock:^{
        NSData *resData = [request responseData];
        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",resDict);
        
    }];
    [request startAsynchronous];

}

-(void)searchInformation
{
    NSURL *URL = [NSURL URLWithString:ROOT_URL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-hqyjfk" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setCompletionBlock:^{
        NSData *resData = [request responseData];
        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",resDict);
        
    }];
    [request startAsynchronous];

}

-(void)requestContent
{
    NSURL *URL = [NSURL URLWithString:ROOT_URL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-xgxx" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setPostValue:@"" forKey:@"content"];
    [request setCompletionBlock:^{
//        NSData *resData = [request responseData];
//        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
//        NSLog(@"%@",resDict);
        NSString *strRes = [request responseString];
        if ([strRes isEqualToString:@"0"]) {
            
            NSLog(@"Success");
            
        }else
        {
            NSLog(@"Failed!");
        }
        
    }];
    [request startAsynchronous];
}

@end
