//
//  massWeapon.m
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "massWeapon.h"

@implementation massWeapon

-(id)init
{
    if (self = [super init]) 
    {    
        weaponName = @"Default Mass Weapon";
        weight = 6;
        handsNeeded = 1;
        handleLength = 2;
        damage = 0;
    }
    return self;
} 


-(int)getDamage{
    damage = (handleLength * (4 * weight));
    NSLog(@"The damage for this mass weapon is %i",damage);
    return damage;
}


-(void)setHandleLength : (int)setHandleLength{
    handleLength = setHandleLength;
    NSLog(@"The %@'s handle length is set to %i feet",weaponName, handleLength);
}
    
@end
