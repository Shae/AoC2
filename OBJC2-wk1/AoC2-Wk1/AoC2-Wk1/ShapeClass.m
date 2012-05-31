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


-(id)setAttr:(EShapeType)type shapeName:(NSString *)shapeName
{
    if (self != nil )
    {
        shapeType = type;
        name = shapeName;
        base = 0;
        height = 0;
        numSides = 0;
    }
    return self;
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

-(int)GetArea{return 0;};

@end
