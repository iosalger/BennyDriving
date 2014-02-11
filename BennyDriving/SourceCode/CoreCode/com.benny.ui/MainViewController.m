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
#import "FileManagerConfig.h"
#import <CoreLocation/CoreLocation.h>

#define IS_IPHONE_5_5C_5S (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )568) < DBL_EPSILON )

#define IS_WIDESCREEN (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double)568)<DBL_EPSILON )

#define IS_IPHONE ([[[UIDevice currentDevice] model] isEqualToString: @"iPhone" ])

#define IS_IPHONE_SIMULATOR ([[[UIDevice currentDevice]mode ] isEqualToString: @"iPhone Simulator"])

#define IS_IPOD   ([[[UIDevice currentDevice] model] isEqualToString: @"iPod touch"])



@interface MainViewController ()
{
    DriverLocationInfo *driverLocation;
    FileManagerConfig *fileManager;
}
@end

@implementation MainViewController

@synthesize Benny_MainMapView,
MainView,
LoginView,
tfUserName,
tfPassWord,
SwitchSvaePassWord,
OrderListPool,
locationManager
;



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
    [self LocationGPS];
    self.Benny_MainMapView.showsUserLocation = YES;
    self.Benny_MainMapView.mapType = 0;
	// Do any additional setup after loading the view.
   // LoginNetWorkRequest *login = [[LoginNetWorkRequest alloc]init];
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
        
    
      //  DriverLocationInfo *DriverLocation = [[DriverLocationInfo alloc]init];
        
        CLLocationCoordinate2D loc = [userLocation coordinate];
        
       // [DriverLocation driverLocation:loc];
        
        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
        
//        NSLog(@"%lf",loc.longitude);
//        NSLog(@"%lf",loc.latitude);
        
        [self.Benny_MainMapView setRegion:region animated:YES];
    
    }

}
-(void)LocationGPS
{
    
    if ([CLLocationManager locationServicesEnabled]) {  // Check GPS Server is available
        locationManager = [[CLLocationManager alloc]init];
        locationManager.delegate = self; //set delegate
        locationManager.distanceFilter = 0.5; // set distance filter
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        [locationManager startUpdatingLocation];
    }
    NSLog(@"GPS On Start !");
    
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    
    CLLocation *newLocation = [locations lastObject];
    CLLocationCoordinate2D _location = [newLocation coordinate];
    DriverLocationInfo *location = [[DriverLocationInfo alloc]init];
    [location driverLocation:_location];

}
 
- (void)LoginView
{
    @autoreleasepool {
        
    if (!(self.LoginView.isHidden)) {
       NSDictionary *account =  [fileManager readAccountPlist];
        [self.tfUserName setText:[account objectForKey:@"UserName"]];
        [self.tfPassWord setText:[account objectForKey:@"PassWord"]];
      }

    }
}
- (IBAction)userLogin:(id)sender {
    @autoreleasepool {
        
        NSDictionary *accountDict = [[NSDictionary alloc]init];
        NSString *userName = self.tfUserName.text;
        NSString *password = self.tfPassWord.text;
        [accountDict setValue:userName forKey:@"UserName"];
        [accountDict setValue:password forKey:@"PassWord"];
        BOOL isSave = [SwitchSvaePassWord isOn];
        if (isSave) {
            [fileManager createAccountPlist:accountDict];
        
        }
    }
}

- (IBAction)isLogin:(id)sender {
    
    BOOL LoginState = false;
    
}



- (IBAction)oPenPool:(id)sender {
  
    
    
    
}
@end
