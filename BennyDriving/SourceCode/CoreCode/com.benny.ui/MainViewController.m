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
#import <QuartzCore/QuartzCore.h>
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
    LoginNetWorkRequest *loginNetWork;
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
 
- (void)LoginViewInputAccount
{
    @autoreleasepool {
        
    if (!(self.LoginView.isHidden)) {
        NSDictionary *account =  [fileManager readAccountPlist];
        [self.tfUserName setText:[account objectForKey:@"username"]];
        [self.tfPassWord setText:[account objectForKey:@"password"]];
      }

    }
}
- (IBAction)userLogin:(id)sender {
    
    @autoreleasepool {
        
        fileManager = [[FileManagerConfig alloc]init];
        loginNetWork = [[LoginNetWorkRequest alloc]init];
        
        NSMutableDictionary *accountDict = [[NSMutableDictionary alloc]init];
        [accountDict setObject:self.tfUserName.text forKey:@"UserName"];
        [accountDict setObject:self.tfPassWord.text forKey:@"PassWord"];
        
       // [accountDict setValue:self.tfUserName.text forKey:@"username"];
        
       // [accountDict setValue:self.tfPassWord.text forKey:@"password"];
        NSLog(@"%@",accountDict);
        BOOL isSave = [SwitchSvaePassWord isOn];
        if (isSave) {
            [fileManager createAccountPlist:accountDict];
        
        }
        [loginNetWork requestLoginAction:accountDict];
        
        
    }
}

-(IBAction)resignTextFiledKeyBoard:(id)sender
{

    [sender resignFirstResponder];
    
    

}

- (IBAction)isLogin:(id)sender {
    
    BOOL loginState = loginNetWork.loginState;
    if (loginState) {
        
        NSLog(@"Left slider");
        
    }else{
    
        [self.LoginView setHidden:NO];
        //[self.LoginView animationDidStart:[CAAnimation ]];
        NSDictionary *accountDict = [fileManager readAccountPlist];
        self.tfUserName.text = [accountDict objectForKey:@"username"];
        self.tfPassWord.text = [accountDict objectForKey:@"password"];
        
    }
    
    
}



- (IBAction)oPenPool:(id)sender {
  
    
    
    
}
@end
