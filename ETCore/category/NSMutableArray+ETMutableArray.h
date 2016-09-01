//
//  NSMutableArray+ETMutableArray.h
//  DemoFMDB
//
//  Created by Enjoytouch on 16/2/15.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (ETMutableArray)

- (void)safelyAddObject:(id)object;
- (void)safelyAddObject:(id)object AtIndex:(NSInteger)index;
- (void)safelyRemoveObject:(id)object;
- (void)safelyRemoveObjectAtIndex:(NSInteger)index;

@end
