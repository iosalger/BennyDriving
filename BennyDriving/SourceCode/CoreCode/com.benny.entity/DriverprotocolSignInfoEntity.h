//
//  DriverprotocolSignInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-22.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DriverprotocolSignInfoEntity : NSObject


@property(nonatomic,retain)NSString * driSignProtocolTitle;//标题
@property(nonatomic,retain)NSString * driSignProtocolContent;//内容

- (id) initWithdriSignProtocolTitle:(NSString *) _driSignProtocolTitle
         anddriSignProtocolContent:(NSString *) _driSignProtocolContent;
@end
