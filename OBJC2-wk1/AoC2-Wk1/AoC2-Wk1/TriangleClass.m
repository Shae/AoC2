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
        shapeType = 0;
        name = @"Triangle";
        base = 10;
        height = 15;
        numSides = 3;
    }
    return self;
}
-(void)setBase :(int)newBase 
{
    base = newBase;
}

-(void)setHeight : (int)newHeight
{
    height = newHeight;
    area = (int) (0.5f * (base * height));
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
      NSLog(@"The Area of the %@ is %i", name, area);
    return area;
};

/*
-(int)GetArea
{
    int area = (int) (0.5f * (base * height));
    NSLog(@"The Area of the Triangle is %i", area);
    return area;
    
}
 */
@end
