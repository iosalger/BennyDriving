//
//  FileManagerConfig.h
//  BennyDriving
//
//  Created by BennyDriving on 1/28/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileManagerConfig : NSObject



#pragma mark - 
#pragma mark Class Method
+ (FileManagerConfig *)instance;
#pragma mark - 
#pragma mark Operation Method
- (void)createFile;
- (void)saveContent;
- (void) writeContent:(NSString *) _content;
- (NSString *) readFile;
-(void)createAccountPlist:(NSDictionary *) _content;
@end
