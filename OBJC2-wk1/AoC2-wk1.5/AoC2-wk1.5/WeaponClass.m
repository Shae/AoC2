//
//  WeaponClass.m
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WeaponClass.h"

@implementation WeaponClass


-(void)setWeaponName: (NSString*)newWeaponName{
    weaponName = newWeaponName;
    NSLog(@"This weapon is a %@", weaponName);
    
}

-(void)setWeight:(int)newWeight{
    weight = newWeight;
    NSLog(@"The weapon weight has been set to %i coinweight", weight);
}





-(NSString*)getWeaponName{
    return weaponName;
}

-(int)getWeight{
    return weight;
}

-(int)getHands{
    return handsNeeded;
}

-(int)getDamage{
    damage = weight * handsNeeded;
    return damage;
}










@end
