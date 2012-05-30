//
//  RectangleClass.m
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RectangleClass.h"
#import "ShapeClass.h"
@implementation RectangleClass

-(id)init
{
    if (self = [super init]) 
    {    
        [self setAttr:SHAPETYPE_RECTANGLE shapeName:@"Rectangle" sides:4 howLong:20 howHigh:10];
    }
    return self;
}

@end
