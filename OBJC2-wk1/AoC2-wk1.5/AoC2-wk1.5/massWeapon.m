//
//  massWeapon.m
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "massWeapon.h"

@implementation massWeapon

-(int)getDamage{
    damage = (handsNeeded * (2 * weight));
    NSLog(@"The damage for this weaon is %i",damage);
    return damage;
}

@end
