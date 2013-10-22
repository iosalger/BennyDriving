//
//  DriverInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-18.
//  Copyright (c) 2013年 Alger. All rights reserved.
// not useing!

#import <Foundation/Foundation.h>

@interface DriverInfoEntity : NSObject

@property(nonatomic,retain)NSString * driJobNumber;//司机工号
@property(nonatomic,retain)NSString * driPhotoURL;//头像照片路径
@property(nonatomic,retain)NSString * driName;//司机姓名
@property(nonatomic,retain)NSString * driPhone;//司机电话
@property(nonatomic,retain)NSString * driSex;//司机性别
@property(nonatomic,retain)NSString * driDrivingPermitNumber;//准驾证号
@property(nonatomic,retain)NSString * driIDnumber;//身份证号
@property(nonatomic,retain)NSString * driDriveNumber;//驾驶证号
@property(nonatomic,retain)NSString * driIDAddress;//身份证地址
@property(nonatomic,retain)NSString * driLiveAddress;//居住地址
@property(nonatomic,retain)NSString * driEmergencyContactPhone;//紧急联系人电话
@property(nonatomic,retain)NSString * driEmergencyContactName;//紧急联系人姓名
@property(nonatomic,assign)NSInteger  driDrivingCount;//司机代驾次数
@property(nonatomic,assign)NSInteger  driDriverGrade;//司机评级


- (id) init;
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
 andDriEmergencyContactName:(NSString *) _driEmergencyContactName;


@end
