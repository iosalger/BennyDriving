

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

   
    NSString *strURL = @"http://10.0.0.110:8080/benny_driving/servlet/LocationShareServlet";
    NSURL *URL = [NSURL URLWithString:strURL];
    files = [FileManagerConfig instance];
    request = [ASIFormDataRequest requestWithURL:URL];
    NSString *driverID = [files readFile];
    NSLog(@"%@",driverID);
   // CLLocationCoordinate2D coord =  _mapView.userLocation.coordinate;
    
    NSMutableDictionary *mtbDict = [[NSMutableDictionary alloc]init];
    [mtbDict setValue:@"text/html" forKey:@"Content-Type"];
    [mtbDict setValue:@"UTF-8" forKey:@"Charset"];
    [mtbDict setValue:driverID forKey:@"JSESSIONID"];
    
    [request setRequestHeaders:mtbDict];
    
    //NSString *longitude = [NSString stringWithFormat:@"%lf",_location.longitude];
    double longitude = _location.longitude;
    NSNumber *longi = [NSNumber numberWithDouble:longitude];
    double latitude = _location.latitude;
    NSNumber *lati = [NSNumber numberWithDouble:latitude];
    //NSString *latitude = [NSString stringWithFormat:@"%lf",_location.latitude];
    NSLog(@"---------%lf--------------%lf-------------",longitude,latitude);
    [request setPostValue:@"dri-dwgx" forKey:@"action"];
    [request setPostValue:driverID forKey:@"driid"];
    [request setPostValue:longi forKey:@"log"];
    [request setPostValue:lati forKey:@"lat"];
    NSLog(@"---------%lf--------------%lf-------------",longitude,latitude);
    NSLog(@"%lf /n %lf",_location.longitude,_location.latitude);
   
        [request setCompletionBlock:^{
        NSString *strRes = [request responseString];
            NSLog(@"Response:%@",strRes);
        if ([strRes isEqualToString:@"0"]) {
            
            NSLog(@"Success");
            //Success
            
        }else if ([strRes isEqualToString:@"-1"])
        {
            
            NSLog(@"Failed!");
            //LoginMain
        
        }
        
    }];
    [request startAsynchronous];
}
/*
//-(void)LocationGPS
//{
//
//    if ([CLLocationManager locationServicesEnabled]) {  // Check GPS Server is available
//        locationManager = [[CLLocationManager alloc]init];
//        locationManager.delegate = self; //set delegate
//        locationManager.distanceFilter = 0.5; // set distance filter
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
//        [locationManager startUpdatingLocation];
//    }
//    NSLog(@"GPS On Start !");
//
//}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    
    CLLocation *newLocation = [locations lastObject];
    CLLocationCoordinate2D f_location = [newLocation coordinate];
    /*
    self.labLongitude.text = [NSString stringWithFormat:@"%lf",f_location.longitude];
    self.labLatitude.text = [NSString stringWithFormat:@"%lf",f_location.latitude];
    self.labAltitude.text = [NSString stringWithFormat:@"%lf",newLocation.altitude];
    //convert ridiculous Location
    f_location= [self convertLocations:f_location];
    self.TrueLongitude.text = [NSString stringWithFormat:@"%lf",f_location.longitude];
    self.TrueLatitude.text = [NSString stringWithFormat:@"%lf",f_location.latitude];
    //set this point on the mapView
    [self SetMapPoint:f_location];
    
    CLGeocoder *geocoder = [[CLGeocoder alloc]init];
    [geocoder reverseGeocodeLocation:newLocation completionHandler:^(NSArray *placemarks,NSError *error){
        
        if ([placemarks count]>0) {
            CLPlacemark *placemark = [placemarks objectAtIndex:0];
            
            NSString *country = [placemark country];
            
            NSDictionary *addressDictionary = [placemark addressDictionary];
            
            NSString *city = [addressDictionary objectForKey:kABPersonAddressCityKey];
            
            city = city == nil ? @"" : city;
            
            NSString *state = [addressDictionary objectForKey:kABPersonAddressStateKey];
            
            state = state == nil ? @"" : state;
            
            NSString *street = [addressDictionary objectForKey:kABPersonAddressStreetKey];
            
            street = street == nil ? @"" : street;
            
            
            self.LabAddress.text = [NSString stringWithFormat:@"%@ %@ %@ %@",country,city,state,street];
            
        }
        
        NSLog(@"%@",placemarks);
        
        
    }];
 
    
}
*/

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
