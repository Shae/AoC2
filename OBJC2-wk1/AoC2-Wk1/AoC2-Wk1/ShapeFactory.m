//
//  ShapeFactory.m
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ShapeFactory.h"
#import "ShapeClass.h"

@implementation ShapeFactory

-(ShapeClass*)CreateShape : (NSInteger)shapeCode
{
   if(shapeCode == 0){
       return [[ShapeClass alloc]setAttr:SHAPETYPE_TRIANGLE shapeName:@"Triangle" sides:3 howLong:10 howHigh:15];
    }else if(shapeCode == 1){
        return [[ShapeClass alloc]setAttr:SHAPETYPE_SQUARE shapeName:@"Square" sides:4 howLong:10 howHigh:15];
    }else if(shapeCode == 2){
        return [[ShapeClass alloc]setAttr:SHAPETYPE_RECTANGLE shapeName:@"Rectangle" sides:4 howLong:20 howHigh:10];
    }
    return nil;
};

@end
