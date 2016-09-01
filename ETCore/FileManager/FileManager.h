//
//  FileManager.h
//  DemoFMDB
//
//  Created by Enjoytouch on 16/2/14.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileManager : NSObject

+ (NSFileManager *)shareInstance;
+ (BOOL)fileExists:(NSString *)fileName;
+ (NSString *)getFilePath:(NSString *)fileName;
+ (NSString *)getDocumentPath;

+ (NSString *)getFileBundlePath:(NSString *)fileName;
+ (NSString *)getBundlePath;

@end
