//
//  NSMutableArray+ETMutableArray.m
//  DemoFMDB
//
//  Created by Enjoytouch on 16/2/15.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "NSMutableArray+ETMutableArray.h"

@implementation NSMutableArray (ETMutableArray)

- (void)safelyAddObject:(id)object
{
    if (!self || ![self isKindOfClass:[NSArray class]] || !object)
    {
        return ;
    }
    [self addObject:object];
}

- (void)safelyAddObject:(id)object AtIndex:(NSInteger)index
{
    if (!self || ![self isKindOfClass:[NSArray class]] || index < 0 || index > self.count)
    {
        return ;
    }
    
    [self insertObject:object atIndex:index];
}

- (void)safelyRemoveObject:(id)object
{
    if (!self || ![self isKindOfClass:[NSArray class]] || !object)
    {
        return ;
    }
    
    for (id item in self)
    {
        if ([item isEqual:object])
        {
            [self removeObject:object];
            return ;
        }
    }
}

- (void)safelyRemoveObjectAtIndex:(NSInteger)index
{
    if (!self || ![self isKindOfClass:[NSArray class]] || index < 0 || index >= self.count)
    {
        return ;
    }
    
    [self removeObjectAtIndex:index];
}

@end
