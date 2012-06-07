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
        weight = 6;
        handsNeeded = 2;
        damage = 0;
    }
    return self;
} 


-(int)getDamage{
    damage = (1.5 * (handsNeeded * weight));
    NSLog(@"The damage for this weaon is %i",damage);
    return damage;
}

@end
