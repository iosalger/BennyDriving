//
//  DriverAdditionInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-23.
//  Copyright (c) 2013年 Alger. All rights reserved.
//  司机个人信息添加项

#import <Foundation/Foundation.h>

@interface DriverAdditionInfoEntity : NSObject

@property(nonatomic,retain)NSString * driDriverAdditionDrivingCount;//代驾次数
@property(nonatomic,retain)NSString * driDriverAdditionDriverName;//司机姓名
@property(nonatomic,retain)NSString * driDriverAdditionDrivingYears;//司机驾龄
@property(nonatomic,retain)NSString * driDriverAdditionDriverGrade; ///司机评分
- (id) initWithDriverAdditionDrivingCount:(NSString *) _driDriverAdditionDrivingCount
              andDriverAdditionDriverName:(NSString *) _driDriverAdditionDriverName
            andDriverAdditionDrivingYears:(NSString *) _driDriverAdditionDrivingYears
             andDriverAdditionDriverGrade:(NSString *) _driDriverAdditionDriverGrade;

@end
