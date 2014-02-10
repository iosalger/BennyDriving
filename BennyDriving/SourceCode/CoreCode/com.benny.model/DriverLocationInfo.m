

//
//  DriverLocationInfo.m
//  BennyDriving
//
//  Created by BennyDriving on 1/31/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import "DriverLocationInfo.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "FileManagerConfig.h"
#import "ASIFormDataRequest.h"
@interface DriverLocationInfo()


@end


@implementation DriverLocationInfo
@synthesize files,request;

- (void) driverLocation:(CLLocationCoordinate2D) _location
{

   
    NSString *strURL = @"http://10.0.0.110:8080/benny_drivind/LocationShareServlet/";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSString *driverID = [files readFile];
    
   // CLLocationCoordinate2D coord =  _mapView.userLocation.coordinate;
    
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    
    [request setRequestHeaders:mtbDict];
    
    [request setPostValue:@"dri-dwgx" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setPostValue:[NSString stringWithFormat:@"%lf",_location.longitude] forKey:@"log"];
    [request setPostValue:[NSString stringWithFormat:@"%lf",_location.latitude] forKey:@"lat"];

    NSLog(@"%lf /n %lf",_location.longitude,_location.latitude);
   
        [request setCompletionBlock:^{
        NSString *strRes = [request responseString];
            NSLog(@"%@",strRes);
//        if ([strRes isEqualToString:@"0"]) {
//            
//            NSLog(@"Success");
//            
//        }else if ([strRes isEqualToString:@"-1"])
//        {
//            NSLog(@"Failed!");
//        
//        }
        
    }];
    [request startAsynchronous];
}

- (void) cancelLocation
{
    NSString *strURL = @"http://10.0.0.110:8080/benny_drivind/LocationShareServlet/";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSString *driverID = [files readFile];

    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    
    [request setRequestHeaders:mtbDict];
    
    [request setPostValue:@"dri-qxdwgx" forKey:@"action"];
    [request setPostValue:driverID forKey:@"dirid"];
    [request setCompletionBlock:^{
        NSString *strRes = [request responseString];
        if ([strRes isEqualToString:@"0"]) {
            
            NSLog(@"Success");
            
        }else if ([strRes isEqualToString:@"-1"])
        {
            NSLog(@"Failed!");
            
        }

    
    }];

    [request startAsynchronous];

}

@end
