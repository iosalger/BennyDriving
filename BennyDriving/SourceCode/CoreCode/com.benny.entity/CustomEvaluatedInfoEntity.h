//
//  CustomEvaluatedInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-28.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomEvaluatedInfoEntity : NSObject

@property(nonatomic,retain)NSString * driCustomEvaluatedUserPhone;//用户电话
@property(nonatomic,retain)NSString * driCustomEvaluatedTime;//评价时间
@property(nonatomic,retain)NSString * driCustomEvaluatedContent;//评价内容
@property(nonatomic,retain)NSString * driCustomEvaluatedStars;//评价星级 (1-5)

- (id) initWithCustomEvaluatedUserPhone:(NSString *) _driCustomEvaluatedUserPhone
                  andCustomEvalutedTime:(NSString *) _driCustomEvaluatedTime
               andCustomEvalutedContent:(NSString *) _driCustomEvaluatedContent
                 andCustomEvalutedStars:(NSString *) _driCustomEvaluatedStars;


@end
