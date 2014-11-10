//
//  BXEmulator.m
//  BochsKit
//
//  Created by Alsey Coleman Miller on 11/9/14.
//  Copyright (c) 2014 Bochs. All rights reserved.
//

#import "BXEmulator.h"

int bochs_main (const char*);

@implementation BXEmulator

+(void)startBochsWithConfigPath:(NSString *)configPath
{
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    
    bochs_main([configPath UTF8String]);
    
    [pool release];
}

@end
