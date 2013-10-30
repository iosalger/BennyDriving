//
//  CustomEvaluatedInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-28.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverCustomEvaluatedInfoEntity.h"

@implementation DriverCustomEvaluatedInfoEntity

@synthesize 
    driCustomEvaluatedUserPhone,//用户电话
    driCustomEvaluatedTime,//评价时间
    driCustomEvaluatedContent,//评价内容
    driCustomEvaluatedStars;//评价星级

- (id) initWithCustomEvaluatedUserPhone:(NSString *) _driCustomEvaluatedUserPhone
                  andCustomEvalutedTime:(NSString *) _driCustomEvaluatedTime
               andCustomEvalutedContent:(NSString *) _driCustomEvaluatedContent
                 andCustomEvalutedStars:(NSString *) _driCustomEvaluatedStars
{
    self.driCustomEvaluatedUserPhone = _driCustomEvaluatedUserPhone;
    self.driCustomEvaluatedTime = _driCustomEvaluatedTime;
    self.driCustomEvaluatedContent = _driCustomEvaluatedContent;
    self.driCustomEvaluatedStars = _driCustomEvaluatedStars;


    return self;

}



@end
