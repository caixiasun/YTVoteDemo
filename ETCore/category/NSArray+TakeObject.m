//
//  NSArray+TakeObject.m
//  Demo01
//
//  Created by Enjoytouch on 16/1/7.
//  Copyright (c) 2016年 CaixiaSun. All rights reserved.
//

#import "NSArray+TakeObject.h"

@implementation NSArray (TakeObject)

- (id)objectSafeAtIndex:(NSInteger)index
{
    if (index >= self.count)
    {
        return nil;
    }
    
    return [self objectAtIndex:index];
}

@end
