//
//  MainViewController.h
//  FSOcalc2
//
//  Created by Shae Klusman on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>{
    
float result;
IBOutlet UILabel *calcScreen;
int action;
float currentNum;
IBOutlet UISwitch *mySwitch;
IBOutlet UISegmentedControl *BGswitch;
    
}
@property (weak, nonatomic) IBOutlet UIButton *One1;
@property (weak, nonatomic) IBOutlet UIButton *Zero0;
@property (weak, nonatomic) IBOutlet UIButton *Two2;
@property (weak, nonatomic) IBOutlet UIButton *Three3;
@property (weak, nonatomic) IBOutlet UIButton *Four4;
@property (weak, nonatomic) IBOutlet UIButton *Five5;
@property (weak, nonatomic) IBOutlet UIButton *Six6;
@property (weak, nonatomic) IBOutlet UIButton *Seven7;
@property (weak, nonatomic) IBOutlet UIButton *Eight8;
@property (weak, nonatomic) IBOutlet UIButton *Nine9;

-(IBAction)showInfo:(id)sender;
-(IBAction)numKey:(id)sender;
-(IBAction)actionPressed:(id)sender;
-(IBAction)clear;
-(IBAction)clearAll; 
-(void)switchIT;
-(IBAction)BGtoggle:(id)sender;

@end
