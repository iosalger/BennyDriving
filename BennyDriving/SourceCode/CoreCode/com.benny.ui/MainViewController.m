//
//  MainViewController.m
//  BennyDriving
//
//  Created by BennyDriving on 1/21/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import "MainViewController.h"
#import "LoginNetWorkRequest.h"
#import "DriverLocationInfo.h"

#define IS_IPHONE_5_5C_5S (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )568) < DBL_EPSILON )

#define IS_WIDESCREEN (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double)568)<DBL_EPSILON )

#define IS_IPHONE ([[[UIDevice currentDevice] model] isEqualToString: @"iPhone" ])

#define IS_IPHONE_SIMULATOR ([[[UIDevice currentDevice]mode ] isEqualToString: @"iPhone Simulator"])

#define IS_IPOD   ([[[UIDevice currentDevice] model] isEqualToString: @"iPod touch"])



@interface MainViewController ()
{
    DriverLocationInfo *driverLocation;
}
@end

@implementation MainViewController

@synthesize Benny_MainMapView,
MainView,
LoginView,
tfUserName,
tfPassWord,
SwitchSvaePassWord,
OrderListPool;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
//    if (IS_IPHONE_5_5C_5S) {
//        
//        
//    }else{
//        
//        self.MainView.frame = CGRectMake(0, 0, 320, 480);
//        
//    }

    
    [super viewDidLoad];
    self.Benny_MainMapView.showsUserLocation = YES;
    self.Benny_MainMapView.mapType = 0;
	// Do any additional setup after loading the view.
    //LoginNetWorkRequest *login = [[LoginNetWorkRequest alloc]init];
    //[login requestLoginAction];
    //[login checkdeal];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)callPhoneToESQ:(id)sender {
    @autoreleasepool {
        
        UIWebView *callWebview =[[UIWebView alloc] init];
    
        NSURL *telURL =[NSURL URLWithString:@"tel:15221008089"];
    
        [callWebview loadRequest:[NSURLRequest requestWithURL:telURL]];

        [self.view addSubview:callWebview];
    
    }
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    @autoreleasepool {
        
    
        DriverLocationInfo *DriverLocation = [[DriverLocationInfo alloc]init];
        
        CLLocationCoordinate2D loc = [userLocation coordinate];
        
        [DriverLocation driverLocation:loc];
        
        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
        
//        NSLog(@"%lf",loc.longitude);
//        NSLog(@"%lf",loc.latitude);
        
        [self.Benny_MainMapView setRegion:region animated:YES];
   
    }

}

- (IBAction)userLogin:(id)sender {
    
    
    
    
}
- (IBAction)oPenPool:(id)sender {
  
    
    
    
}
@end
