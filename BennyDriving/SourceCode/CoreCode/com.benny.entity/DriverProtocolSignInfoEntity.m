//
//  DriverprotocolSignInfoEntity.m
//  BennyDriving
//
//  Created by Alger on 13-10-22.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import "DriverprotocolSignInfoEntity.h"

@implementation DriverProtocolSignInfoEntity

@synthesize
    driSignProtocolTitle,//标题
    driSignProtocolContent;//内容

-(id) initWithdriSignProtocolTitle:(NSString *) _driSignProtocolTitle
         anddriSignProtocolContent:(NSString *) _driSignProtocolContent
{
    self.driSignProtocolTitle = _driSignProtocolTitle;
    self.driSignProtocolContent = _driSignProtocolContent;

    return self;
}
@end
