//
//  poleWeapon.h
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WeaponClass.h"

@interface poleWeapon : WeaponClass{
    int length;
}

-(int)getDamage;
-(void)setPoleLength : (int)lengthInFeet;
@end
