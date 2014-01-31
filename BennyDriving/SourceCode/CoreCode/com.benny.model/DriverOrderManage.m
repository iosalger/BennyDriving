//
//  DriverOrderManage.m
//  BennyDriving
//
//  Created by BennyDriving on 1/31/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import "DriverOrderManage.h"
#import "FileManagerConfig.h"
#import "ASIFormDataRequest.h"
@implementation DriverOrderManage


@synthesize files,request;


-(void)CheckOrderPool
{
    @autoreleasepool {
 
        NSString * strURL = @"http://10.0.0.110:8080/benny_driving/FormServlet/";
        NSURL *URL = [NSURL URLWithString:strURL];
        files = [FileManagerConfig instance];
        NSString *driverID = [files readFile];
        request  = [ASIFormDataRequest requestWithURL:URL];
        
        NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
        [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
        [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
        [mtbDict setValue:driverID forKey:@"JSESSIONID"];
        
        [request setRequestHeaders:mtbDict];
        
        [request setPostValue:@"dri-qdc" forKey:@"action"];
        [request setPostValue:driverID forKey:@"driid"];
        [request setCompletionBlock:^{
        
            NSData *resData = [request responseData];
            NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:Nil];
            NSLog(@"%@",resDict);
        }];
    
        [request startAsynchronous];
    }
}

- (void)forestallOrder
{

    @autoreleasepool {
        NSString *strURL = @"http://10.0.0.110:8080/benny_driving/FormServlet/";
        NSURL *URL = [NSURL URLWithString:strURL];
        files = [FileManagerConfig instance];
        NSString *driverID = [files readFile];
        request = [ASIFormDataRequest requestWithURL:URL];
        NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
        [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
        [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
        [mtbDict setValue:driverID forKey:@"JSESSIONID"];
        
        [request setRequestHeaders:mtbDict];
        
        [request setPostValue:@"dri-qd" forKey:@"action"];
        [request setPostValue:driverID forKey:@"driid"];
        [request setPostValue:@"formID" forKey:@"formid"];
        [request setCompletionBlock:^{
            NSData *resData = [request responseData];
            NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
            NSLog(@"%@",resDict);
            
        }];
        [request startAsynchronous];
        
    }


}



- (void)subscribeOrder
{
    @autoreleasepool {
        
        NSString *strURL = @"http://10.0.0.110:8080/benny_driving/FormSerlvet/";
        NSURL *URL =[NSURL URLWithString:strURL];
        files = [FileManagerConfig instance];
        NSString *driverID = [files readFile];
        request = [ASIFormDataRequest requestWithURL:URL];
        NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
        [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
        [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
        [mtbDict setValue:driverID forKey:@"JSESSIONID"];

        [request setRequestHeaders:mtbDict];
        
        [request setPostValue:@"dri-yjddcx" forKey:@"action"];
        [request setPostValue:driverID forKey:@"driid"];
        
        [request setCompletionBlock:^{
            NSData  *resData = [request responseData];
            NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
            NSLog(@"%@",resDict);
        }];
        [request startAsynchronous];
    }



}

- (void)historyOrder
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/order/loadDriHistoryOrder.action";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];

    [request setRequestHeaders:mtbDict];

    [request setPostValue:driverID forKey:@"dirid"];
    [request setPostValue:@"1" forKey:@"startPage"];
    [request setCompletionBlock:^{
        NSData *resData = [request responseData];
        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",resData);
        
    }];
    [request startAsynchronous];
}



- (void) bonds
{

    NSString *strURL = @"http://localhost:8080/benny_driving/bonus/checkBonus.action";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"" forKey:@"orderid"];
    [request setCompletionBlock:^{
      
        NSData *resData = [request responseData];
        
        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:Nil];
        
        NSLog(@"%@",resDict);
        
    }];
    
    [request startAsynchronous];

}
@end
