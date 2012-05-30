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
        [self setAttr:SHAPETYPE_TRIANGLE shapeName:@"Triangle" howLong:10 howHigh:15];
        numSides = 3;
    }
    return self;
}

-(int)GetArea
{
    int area = (int) 0.5f * (base * height);
    NSLog(@"The Area of the Triangle is %i", area);
    return area;
    
}
@end
