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
            numSides = 4;
            name = @"Test Test";
        }
        return self;
    };

-(int)GetNumSides
{
    return numSides;
}

-(NSString*)GetName
{
    nameIt = [NSString stringWithFormat:@"the shape is a %@", name];
    if (nameIt != nil)
        {
            return nameIt;
        }
    
    return @"Error";
    
}


@end
