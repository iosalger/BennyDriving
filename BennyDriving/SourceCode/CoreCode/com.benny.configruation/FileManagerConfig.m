//
//  FileManagerConfig.m
//  BennyDriving
//
//  Created by BennyDriving on 1/28/14.
//  Copyright (c) 2014 Alger. All rights reserved.
//

#import "FileManagerConfig.h"

@implementation FileManagerConfig

- (void)createFile
{
    // get library path
    //  NSArray *arrDoc = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSArray *arrDoc = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *strLib = [arrDoc objectAtIndex:0];
   // NSString *strFloder = [strLib stringByAppendingPathComponent:@"benny"];
    //NSLog(@"%@",strFloder);
    NSString *filePath = [strLib stringByAppendingPathComponent:@"bennyConfig.txt"];
    NSLog(@"%@",filePath);
    NSFileManager *fileM = [NSFileManager defaultManager];
    //  NSString *fileName = [NSString stringWithFormat:@"bennyconfig.txt"];
    //   NSString *filePath = [strLib stringByAppendingPathComponent:fileName];
   // NSString *fileContent = @"sdfsdfdfgdfsgdsfg";
   // NSData *data = [fileContent dataUsingEncoding:NSUTF8StringEncoding];
    BOOL result = [fileM createFileAtPath:filePath contents:nil attributes:nil];
    if (result) {
        NSLog(@"Create Success!≥ ");
    }
    
}
- (void) writeContent:(NSString *) _content
{
    
    NSArray *strpath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *strDoc = [strpath objectAtIndex:0];
   // NSString *strFloder = [strDoc stringByAppendingPathComponent:@"benny"];
    NSString *strFile = [strDoc stringByAppendingPathComponent:@"bennyConfig.txt"];
    //   NSString *fileName = @"bennyconfig.txt";
   //   NSString *content = @"JSONTEXT";
    //  NSString *filePath = [strLib stringByAppendingPathComponent:fileName];
    BOOL result = [_content writeToFile:strFile atomically:YES encoding:NSUTF8StringEncoding error:nil];
    if (result) {
        NSLog(@"Write Success !");
    }
    
}
- (void) readFile
{
    //read file data
    NSArray *arrDoc = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *strLib = [arrDoc objectAtIndex:0];
    //NSString *strFloder  = [strLib stringByAppendingPathComponent:@"benny"];
    NSString *strFile = [strLib stringByAppendingPathComponent:@"bennyConfig.txt"];
    NSString *content = [NSString stringWithContentsOfFile:strFile encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@",content);
    //NSData *fileData = [NSData dataWithContentsOfFile:filesPath];
    //NSString *contents = [[NSString alloc]initWithData:fileData encoding:NSUTF8StringEncoding];
    //NSLog(@"%@",contents);
}
- (void)saveContent
{



}



@end
