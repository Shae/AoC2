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
        shapeType = 0;
        name = @"Rectangle";
        base = 20;
        height = 10;
        numSides = 4;
    }
    return self;
}
/*
-(void)setBase :(int)newBase 
{
    base = newBase;
}

-(void)setHeight : (int)newHeight
{
    height = newHeight;
}



-(int)GetNumSides
{
    NSLog(@"Number of sides is %i", numSides );
    return numSides;
}



-(NSString*)GetName
{
    NSLog(@"This is a %@", name );
    return name;
}

-(int)GetArea
{

    area = (base * height); 
    NSLog(@"The Area of the %@ is %i", name, area);
    return area;
};
 */
@end
