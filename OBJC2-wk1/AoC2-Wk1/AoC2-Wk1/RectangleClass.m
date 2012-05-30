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
        [self setAttr:SHAPETYPE_RECTANGLE shapeName:@"Rectangle" howLong:20 howHigh:10];
        numSides = 4;
    }
    return self;
}

-(int)GetArea
{
    int area = (int)(base * height);
    NSLog(@"The Area of the Rectangle is %i", area);
    return area;
    
}
@end
