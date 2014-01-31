//
//  DriverAccountInfo.m
//  BennyDriving
//
//  Created by BennyDriving on 1/31/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import "DriverAccountInfo.h"
#import "FileManagerConfig.h"
#import "ASIFormDataRequest.h"
@implementation DriverAccountInfo

@synthesize files,request;

//searching Driver Account info
-(void)searchingAccount
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/Servlet/";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-acc" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setCompletionBlock:^{
        NSData *resData = [request responseData];
        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",resDict);
    }];
    [request startAsynchronous];
}

//driver consume list

-(void)searchingDriverConsume
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/Servlet/";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-xfjlcx" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setCompletionBlock:^{
        NSData *resData = [request responseData];
        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",resDict);
    }];
    [request startAsynchronous];
}

//driver recharge list

-(void)searchDriverRecharge
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/Servlet/";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-czjl" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setCompletionBlock:^{
        NSData *resData = [request responseData];
        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",resDict);
    }];
    [request startAsynchronous];
}

//driver take cash list

-(void)searchDriverTakeCash
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/Servlet/";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-txjl" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setCompletionBlock:^{
        NSData *resData = [request responseData];
        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",resDict);
    }];
    [request startAsynchronous];
}

//driver apply for take cash

-(void)applyForTakeCash
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/Servlet/";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-tx" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setPostValue:@"" forKey:@"cost"];
    [request setCompletionBlock:^{
//        NSData *resData = [request responseData];
//        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
//        NSLog(@"%@",resDict);
        NSString *strRes = [request responseString];
        if ([strRes isEqualToString:@"0"]) {
            NSLog(@"Success !");
        }else
        {
            NSLog(@"Failed!");
        }
    }];
    [request startAsynchronous];
}

//driver account recharge

-(void)accountRecharge
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/Servlet/";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:@"dri-zhcz" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setPostValue:@"" forKey:@"cost"];
    [request setCompletionBlock:^{
        //        NSData *resData = [request responseData];
        //        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
        //        NSLog(@"%@",resDict);
        NSString *strRes = [request responseString];
        if (![strRes isEqualToString:@"-1"]) {
            NSLog(@"Success !");
        }else
        {
            NSLog(@"Failed!");
        }
    }];
    [request startAsynchronous];
}

//driver pay according to account

-(void)accountPayAccording
{

    NSString *strURL = @"http://abc.4008200972.com/benny_driving/driPayRent/driPayRent.action";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    NSString *driverID = [files readFile];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    [request setRequestHeaders:mtbDict];
    [request setPostValue:driverID forKey:@"driid"];
    [request setCompletionBlock:^{
        //        NSData *resData = [request responseData];
        //        NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingAllowFragments error:nil];
        //        NSLog(@"%@",resDict);
        NSString *strRes = [request responseString];
        int res = [strRes intValue];
        switch (res) {
            case 0:
                NSLog(@"Success");
                break;
            case 1:
                NSLog(@"wrong date");
                break;
            case 2:
                NSLog(@" balance not full");
                break;
            case 3:
                NSLog(@"again Success");
                break;
            case 4:
                NSLog(@"Sql Wrong");
                break;
            case 5:
                NSLog(@"parameter wrong");
                break;
            default:
                break;
        }
    
    }];
    [request startAsynchronous];
    
}


@end
