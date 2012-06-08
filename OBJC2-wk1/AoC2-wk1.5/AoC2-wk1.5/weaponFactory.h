//
//  weaponFactory.h
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeaponClass.h"

@interface weaponFactory : NSObject

+(WeaponClass*)buildWeapon : (NSInteger)weaponCode;

@end
