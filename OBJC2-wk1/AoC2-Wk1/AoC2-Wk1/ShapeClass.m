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
                name = @"No Name Yet";
            }
        
        return self;
    };

-(int)GetNumSides
{
    NSLog(@"Number of Sides is %i", numSides );
}

-(NSString*)GetName
{
     NSLog(@"My name is %@", name );
}

-(int)GetArea
{
     NSLog(@"My name is %@", name );
}

@end
