//
//  weaponFactory.m
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "weaponFactory.h"
#import "WeaponClass.h"
#import "edgeWeapon.h"
#import "massWeapon.h"
#import "poleWeapon.h"


@implementation weaponFactory




+(WeaponClass*)buildWeapon : (NSInteger)weaponCode{
    if(weaponCode == 0){
        
        NSLog(@"Please enter a valid weapon code 1 - 3.");
        return nil;
        
    }else if(weaponCode == 1){
        
        return [[edgeWeapon alloc]init];
        
    }else if(weaponCode == 2){
        
        return [[massWeapon alloc]init];
        
    }else if(weaponCode == 2){
        
        return [[poleWeapon alloc]init];
        
    }
    
    return nil;
}

    
@end
