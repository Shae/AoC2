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
        [self setAttr:SHAPETYPE_SQUARE shapeName:@"Square"];
        base = 10;
        height = 10;
        numSides = 4;
    }
    return self;
}   

-(int)GetArea
    {
        int area = (int)(base * height);
        NSLog(@"The Area of the Square is %i", area);
        return area;
        
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
@end
