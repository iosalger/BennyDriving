//
//  DriverProtocolSignInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-30.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverProtocolSignInfoEntity.h"

@implementation DriverProtocolSignInfoEntity


@synthesize 
driDriverPotocolTitle,//标题
driDriverPotocolContent;//内容


- (id) initWithDriverPotocolTitle:(NSString *) _driDriverPotocolTitle
          andDriverPotocolContent:(NSString *) _driDriverPotocolContent
{

    self.driDriverPotocolTitle = _driDriverPotocolTitle;
    self.driDriverPotocolContent = _driDriverPotocolContent;
    return self;

}


@end
