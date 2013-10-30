//
//  DriverProtocolSignInfoEntity.h
//  BennyDriving
//
//  Created by Alger on 13-10-30.
//  Copyright (c) 2013年 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DriverProtocolSignInfoEntity : NSObject



@property(nonatomic,retain)NSString * driDriverPotocolTitle;//标题
@property(nonatomic,retain)NSString * driDriverPotocolContent;//内容


- (id) initWithDriverPotocolTitle:(NSString *) _driDriverPotocolTitle
          andDriverPotocolContent:(NSString *) _driDriverPotocolContent;

@end
