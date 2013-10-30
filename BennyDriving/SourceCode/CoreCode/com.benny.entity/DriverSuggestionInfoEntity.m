//
//  SuggestionInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-24.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverSuggestionInfoEntity.h"

@implementation DriverSuggestionInfoEntity
@synthesize 
driSuggestionDriverPhone,//司机电话
driSuggestionSubmitContent,//提交内容
driSuggestionSubmitTime,//提交时间
driSuggestionResponseContent,//反馈内容
driSuggestionResponseTime;//反馈时间

- (id) initWithSuggestionDriverPhone:(NSString *) _driSuggestionDriverPhone
          andSuggestionSubmitContent:(NSString *) _driSuggestionSubmitContent
             andSuggestionSubmitTime:(NSString *) _driSuggestionSubmitTime
        andSuggestionResponseContent:(NSString *) _driSuggestionResponseContent
           andSuggestionResponseTime:(NSString *) _driSuggestionResponseTIme
{
    self.driSuggestionDriverPhone = _driSuggestionDriverPhone;
    self.driSuggestionSubmitContent = _driSuggestionSubmitContent;
    self.driSuggestionSubmitTime = _driSuggestionSubmitTime;
    self.driSuggestionResponseContent = _driSuggestionResponseContent;
    self.driSuggestionResponseTime = _driSuggestionResponseTIme;
    
    return self;
}


@end
