//
//  ShapeFactory.m
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ShapeFactory.h"
#import "ShapeClass.h"
#import "TriangleClass.h"
#import "SquareClass.h"
#import "RectangleClass.h"

@implementation ShapeFactory


+(ShapeClass*)CreateShape : (NSInteger)shapeCode
{
    
   if(shapeCode == 0){
       
        return [[TriangleClass alloc]init]; 
       
    }else if(shapeCode == 1){
        
        return [[SquareClass alloc]init];
        
    }else if(shapeCode == 2){
        
        return [[RectangleClass alloc]init];
        
    }
    
    return nil;
};

@end
