//
//  FileManager.m
//  DemoFMDB
//
//  Created by Enjoytouch on 16/2/14.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "FileManager.h"

static NSFileManager *_manager = nil;

@implementation FileManager

+ (NSFileManager *)shareInstance
{
    static dispatch_once_t patch;
    dispatch_once(&patch, ^{
        if (!_manager)
        {
            _manager = [NSFileManager defaultManager];
        }
    });
    return _manager;
}

+ (BOOL)fileExists:(NSString *)fileName
{
    if ([[self shareInstance] fileExistsAtPath:[self getFilePath:fileName]])
    {
        return YES;
    }
    
    return NO;
}

+ (NSString *)getFilePath:(NSString *)fileName
{
    return [[self getDocumentPath] stringByAppendingPathComponent:fileName];
}

+ (NSString *)getDocumentPath
{
    return NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
}

+ (NSString *)getFileBundlePath:(NSString *)fileName
{
    return [[self getBundlePath] stringByAppendingPathComponent:fileName];
}
+ (NSString *)getBundlePath
{
    return [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"sources.bundle"];
}

@end
