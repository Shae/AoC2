//
//  ShapeFactory.h
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShapeClass.h"


@interface ShapeFactory : NSObject
-(ShapeClass*)CreateShape : (NSInteger)shapeCode;
@end
