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
        shapeType = 1;
        name = @"Square";
        base = 15;
        height = 15;
        numSides = 4;
    }
    return self;
}   
@end
