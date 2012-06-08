//
//  edgeWeapon.m
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "edgeWeapon.h"

@implementation edgeWeapon

-(id)init
{
    if (self = [super init]) 
    {    
        weaponName = @"Default Edged Weapon";
        weight = 2;
        handsNeeded = 2;
        sharpnessScale = 1;
        damage = 0;
    }
    return self;
} 


-(int)getDamage{
    damage = (sharpnessScale * (handsNeeded * weight));
    NSLog(@"The damage for this edged weapon is %i",damage);
    return damage;
}

-(void)setSharpness : (int)howSharp{
    sharpnessScale = howSharp;
    NSLog(@"The sharpness for this weapon has is %i",sharpnessScale);
}
@end
