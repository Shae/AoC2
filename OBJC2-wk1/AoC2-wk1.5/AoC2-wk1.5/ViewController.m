//
//  ViewController.m
//  AoC2-wk1.5
//
//  Created by Shae Klusman on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    self.view.backgroundColor = [UIColor blackColor];
    
    ///////LABELS/////////////    
    textlabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, 320, 100)];
    textlabel1.backgroundColor = [UIColor yellowColor]; 
    textlabel1.text = @"TEST1";
    textlabel1.textAlignment = UITextAlignmentCenter; 
    [self.view addSubview:textlabel1];
    
    textlabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 320, 100)];
    textlabel2.backgroundColor = [UIColor orangeColor]; 
    textlabel2.text = @"TEST2";
    textlabel2.textAlignment = UITextAlignmentCenter; 
    [self.view addSubview:textlabel2];
    
    textlabel3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 275, 320, 100)];
    textlabel3.backgroundColor = [UIColor redColor]; 
    textlabel3.text = @"TEST3";
    textlabel3.textAlignment = UITextAlignmentCenter; 
    [self.view addSubview:textlabel3];
    
    textlabel4 = [[UILabel alloc] initWithFrame:CGRectMake(0, 400, 320, 20)];
    textlabel4.backgroundColor = [UIColor clearColor]; 
    textlabel4.textColor = [UIColor whiteColor];
    textlabel4.textAlignment = UITextAlignmentCenter; 
    textlabel4.text = @"Shae B. R. Klusman (AoC2  Class1206)";
    [self.view addSubview:textlabel4];
    
    
    //////////// FACTORY CALLS (Static) /////////////////
/*    
    // for the static version of the shape factory
    edgeWeapon *sword = (edgeWeapon*) [weaponFactory buildWeapon:1];
    [sword setWeaponName:@"Long Sword"];
    [sword setWeight:3];
    [sword setSharpness:3];
    textlabel1.text = [NSString stringWithFormat:@"Weapon Name: %@    damage: %i",[sword getWeaponName], [sword getDamage]];
    
    // for the static version of the shape factory
    massWeapon *mace = (massWeapon*) [weaponFactory buildWeapon:2];
    [mace setWeaponName:@"Bone Mace"];
    [mace setWeight:3];
    [mace setHandleLength:2];
    textlabel1.text = [NSString stringWithFormat:@"Weapon Name: %@    damage: %i",[mace getWeaponName], [mace getDamage]];
    
    // for the static version of the shape factory
    poleWeapon *glave = (poleWeapon*) [weaponFactory buildWeapon:1];
    [glave setWeaponName:@"Long Sword"];
    [glave setWeight:3];
    [glave setLength:6];
    textlabel1.text = [NSString stringWithFormat:@"Weapon Name: %@    damage: %i",[glave getWeaponName], [glave getDamage]];

    */
    
    
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
