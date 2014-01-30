//
//  FileManagerConfig.h
//  BennyDriving
//
//  Created by BennyDriving on 1/28/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileManagerConfig : NSObject


- (void)createFile;
- (void)saveContent;
- (void) writeContent:(NSString *) _content;
- (void) readFile;
@end
