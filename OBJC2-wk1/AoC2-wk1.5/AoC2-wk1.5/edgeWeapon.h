//
//  edgeWeapon.h
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WeaponClass.h"

@interface edgeWeapon : WeaponClass{
    int bladedSides;
}
-(int)getDamage;
@end
