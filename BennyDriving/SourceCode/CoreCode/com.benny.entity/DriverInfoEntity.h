//
//  DriverInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-18.
//  Copyright (c) 2013年 Alger. All rights reserved.
// not useing!

#import <Foundation/Foundation.h>

@interface DriverInfoEntity : NSObject

@property(nonatomic,retain)NSString * driDriverJobNumber;//司机工号
@property(nonatomic,retain)NSString * driDriverPhotoURL;//头像照片路径
@property(nonatomic,retain)NSString * driDriverName;//司机姓名
@property(nonatomic,retain)NSString * driDriverPhone;//司机电话
@property(nonatomic,retain)NSString * driDriverSex;//司机性别
@property(nonatomic,retain)NSString * driDriverDrivingPermitNumber;//准驾证号
@property(nonatomic,retain)NSString * driDriverIDnumber;//身份证号
@property(nonatomic,retain)NSString * driDriverDriveNumber;//驾驶证号
@property(nonatomic,retain)NSString * driDriverIDAddress;//身份证地址
@property(nonatomic,retain)NSString * driDriverLiveAddress;//居住地址
@property(nonatomic,retain)NSString * driDriverEmergencyContactPhone;//紧急联系人电话
@property(nonatomic,retain)NSString * driDriverEmergencyContactName;//紧急联系人姓名
@property(nonatomic,assign)NSInteger  driDriverDrivingCount;//司机代驾次数
@property(nonatomic,assign)NSInteger  driDriverDriverGrade;//司机评级

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
 andDriDriverEmergencyContactName:(NSString *) _driEmergencyContactName;


@end
