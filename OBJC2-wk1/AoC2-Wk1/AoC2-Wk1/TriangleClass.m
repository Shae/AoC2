//
//  TriangleClass.m
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TriangleClass.h"
#import "ShapeClass.h"
@implementation TriangleClass

-(id)init
{
    if (self = [super init]) 
    {    
        [self setAttr:SHAPETYPE_TRIANGLE shapeName:@"Triangle" sides:3 howLong:10 howHigh:15];
    }
    return self;
}

@end
