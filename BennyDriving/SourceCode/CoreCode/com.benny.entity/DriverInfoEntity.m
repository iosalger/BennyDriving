//
//  DriverInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-18.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverInfoEntity.h"

@implementation DriverInfoEntity
@synthesize
    driJobNumber,//司机工号
    driPhotoURL,//头像照片路径
    driName,//司机姓名
    driPhone,//司机电话
    driSex,//司机性别
    driDrivingPermitNumber,//准驾证号
    driIDnumber,//身份证号
    driDriveNumber,//驾驶证号
    driIDAddress,//身份证地址
    driLiveAddress,//居住地址
    driEmergencyContactPhone,//紧急联系人电话
    driEmergencyContactName;//紧急联系人姓名


- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (id) initWithDriJobNumber:(NSString *) _driJobNumber
             andDriPhotoURL:(NSString *) _driPhotoURL
                 andDriName:(NSString *) _driName
                andDriPhone:(NSString *) _driPhone
                  andDriSex:(NSString *) _driSex
  andDriDrivingPermitNumber:(NSString *) _driDrivingPermitNumber
             andDriIDnumber:(NSString *) _driIDnumber
          andDriDriveNumber:(NSString *) _driDriveNumber
            andDriIDAddress:(NSString *) _driIDAddress
          andDriLiveAddress:(NSString *) _driLiveAddress
andDriEmergencyContactPhone:(NSString *) _driEmergencyContactPhone
 andDriEmergencyContactName:(NSString *) _driEmergencyContactName
{
    self.driJobNumber =  _driJobNumber;
    self.driPhotoURL  =  _driPhotoURL;
    self.driName      =  _driName;
    self.driPhone     =  _driPhone;
    self.driSex       =  _driSex;
    self.driDrivingPermitNumber = _driDrivingPermitNumber;
    self.driIDnumber = _driIDnumber;
    self.driDriveNumber = _driDriveNumber;
    self.driIDAddress = _driIDAddress;
    self.driLiveAddress = _driLiveAddress;
    self.driEmergencyContactPhone = _driEmergencyContactPhone;
    self.driEmergencyContactName = _driEmergencyContactName;

    return self;
}

@end
