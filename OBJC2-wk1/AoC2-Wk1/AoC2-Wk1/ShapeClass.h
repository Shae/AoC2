//
//  ShapeClass.h
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    SHAPETYPE_SQUARE=0,
    SHAPETYPE_TRIANGLE,
    SHAPETYPE_RECTANGLE
}EShapeType;

@interface ShapeClass : NSObject
{
    @protected
        EShapeType shapeType;
        NSString *name;
        int numSides;
        int base;
        int height;
}

-(void)setAttr:(EShapeType)type shapeName:(NSString *)shapeName sides:(int)sides howLong:(int)howLong howHigh:(int)howHigh;





    


-(int)GetNumSides;
-(NSString*)GetName;
-(int)GetArea;

@end
