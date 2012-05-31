//
//  SquareClass.h
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ShapeClass.h"

@interface SquareClass : ShapeClass
-(int)GetNumSides;
-(NSString*)GetName;
-(int)GetArea;
-(void)setBase :(int)newBase;
-(void)setHeight : (int)newHeight;
@end
