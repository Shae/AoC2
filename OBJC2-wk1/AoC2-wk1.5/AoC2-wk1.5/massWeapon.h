//
//  massWeapon.h
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WeaponClass.h"


@interface massWeapon : WeaponClass{
    int handleLength;
}
-(int)getDamage;
-(void)setHandleLength : (int)handleLength;
@end
