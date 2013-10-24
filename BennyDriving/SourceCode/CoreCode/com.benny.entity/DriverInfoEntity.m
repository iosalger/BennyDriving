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
    driDriverJobNumber,//司机工号
    driDriverPhotoURL,//头像照片路径
    driDriverName,//司机姓名
    driDriverPhone,//司机电话
    driDriverSex,//司机性别
    driDriverDrivingPermitNumber,//准驾证号
    driDriverIDnumber,//身份证号
    driDriverDriveNumber,//驾驶证号
    driDriverIDAddress,//身份证地址
    driDriverLiveAddress,//居住地址
    driDriverEmergencyContactPhone,//紧急联系人电话
    driDriverEmergencyContactName;//紧急联系人姓名



- (id) initWithDriDriverJobNumber:(NSString *) _driJobNumber
             andDriDriverPhotoURL:(NSString *) _driPhotoURL
                 andDrDriveriName:(NSString *) _driName
                andDriDriverPhone:(NSString *) _driPhone
                  andDriDriverSex:(NSString *) _driSex
  andDriDriverDrivingPermitNumber:(NSString *) _driDrivingPermitNumber
             andDriDriverIDnumber:(NSString *) _driIDnumber
          andDriDriverDriveNumber:(NSString *) _driDriveNumber
            andDriDriverIDAddress:(NSString *) _driIDAddress
          andDriDriverLiveAddress:(NSString *) _driLiveAddress
andDriDriverEmergencyContactPhone:(NSString *) _driEmergencyContactPhone
 andDriDriverEmergencyContactName:(NSString *) _driEmergencyContactName
{
    self.driDriverJobNumber =  _driJobNumber;
    self.driDriverPhotoURL  =  _driPhotoURL;
    self.driDriverName      =  _driName;
    self.driDriverPhone     =  _driPhone;
    self.driDriverSex       =  _driSex;
    self.driDriverDrivingPermitNumber = _driDrivingPermitNumber;
    self.driDriverIDnumber = _driIDnumber;
    self.driDriverDriveNumber = _driDriveNumber;
    self.driDriverIDAddress = _driIDAddress;
    self.driDriverLiveAddress = _driLiveAddress;
    self.driDriverEmergencyContactPhone = _driEmergencyContactPhone;
    self.driDriverEmergencyContactName = _driEmergencyContactName;

    return self;
}

@end
