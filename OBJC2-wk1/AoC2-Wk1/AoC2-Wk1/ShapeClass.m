//
//  ShapeClass.m
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ShapeClass.h"

@implementation ShapeClass


-(id)init
    {
        self = [super init];
        if (self != nil)
            {
                numSides = 0;
                name = @"None";
                base = 0;
                height = 0;
            }
        return self;
    };


-(void)setAttr:(EShapeType)type shapeName:(NSString *)shapeName sides:(int)sides howLong:(int)howLong howHigh:(int)howHigh
{
    shapeType = type;
    name = shapeName;
    base = howLong;
    height = howHigh;
    numSides = sides;
    
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
    return;
}

@end
