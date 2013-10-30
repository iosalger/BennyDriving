//
//  SuggestionInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-24.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DriverSuggestionInfoEntity : NSObject

@property(nonatomic,retain)NSString * driSuggestionDriverPhone;//司机电话
@property(nonatomic,retain)NSString * driSuggestionSubmitContent;//提交内容
@property(nonatomic,retain)NSString * driSuggestionSubmitTime;//提交时间
@property(nonatomic,retain)NSString * driSuggestionResponseContent;//反馈内容
@property(nonatomic,retain)NSString * driSuggestionResponseTime;//反馈时间

- (id) initWithSuggestionDriverPhone:(NSString *) _driSuggestionDriverPhone
          andSuggestionSubmitContent:(NSString *) _driSuggestionSubmitContent
             andSuggestionSubmitTime:(NSString *) _driSuggestionSubmitTime
        andSuggestionResponseContent:(NSString *) _driSuggestionResponseContent
           andSuggestionResponseTime:(NSString *) _driSuggestionResponseTIme;

@end
