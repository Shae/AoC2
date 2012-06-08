//
//  WeaponClass.h
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    WEAPONCLASS_DEFAULT=0,
    WEAPONCLASS_EDGE,
    WEAPONCLASS_MASS,
    WEAPONCLASS_POLE

}weaponCode;

@interface WeaponClass : NSObject{
    NSString *weaponName;
    int weight;
    int handsNeeded;
    int damage;
    
}
-(void)setWeaponName: (NSString*)newWeaponName;
-(void)setWeight:(int)newWeight;


-(NSString*)getWeaponName;
-(int)getWeight;
-(int)getHands;
-(int)getDamage;





@end


