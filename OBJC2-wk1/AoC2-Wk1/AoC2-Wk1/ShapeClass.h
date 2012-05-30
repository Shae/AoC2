//
//  ShapeClass.h
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShapeClass : NSObject
{
    int numSides;
    NSString *name;
    NSString *nameIt;
}
-(NSString*)GetName;
-(int)GetNumSides;
@end
