//
//  SquareClass.m
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SquareClass.h"
#import "ShapeClass.h"
@implementation SquareClass

-(id)init
{
    if (self = [super init]) 
    {    
        [self setAttr:SHAPETYPE_SQUARE shapeName:@"Square" sides:4 howLong:15 howHigh:15];
    }
    return self;
}
@end
