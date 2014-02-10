//
//  MainViewController.h
//  BennyDriving
//
//  Created by BennyDriving on 1/21/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
@interface MainViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>

- (IBAction)callPhoneToESQ:(id)sender;
@property (strong, nonatomic) IBOutlet MKMapView *Benny_MainMapView;
@property (strong, nonatomic) IBOutlet UIView *MainView;
@property (strong, nonatomic) IBOutlet UIView *LoginView;

@property (strong, nonatomic) IBOutlet UITextField *tfUserName;
@property (strong, nonatomic) IBOutlet UITextField *tfPassWord;


- (IBAction)userLogin:(id)sender;

@property (strong, nonatomic) IBOutlet UISwitch *SwitchSvaePassWord;

@property (strong, nonatomic) IBOutlet UIButton *OrderListPool;

- (IBAction)oPenPool:(id)sender;

@end
