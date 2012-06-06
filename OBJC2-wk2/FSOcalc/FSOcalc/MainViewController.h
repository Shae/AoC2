//
//  MainViewController.h
//  FSOcalc
//
//  Created by Shae Klusman on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>{
    NSString *screenString;
    float screenNum;
    float holdNum;
    float answer;
    IBOutlet UISwitch *mySwitch;
}
@property (weak, nonatomic) IBOutlet UITextField *mainText;
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
@property (weak, nonatomic) IBOutlet UIButton *_Point;
@property (weak, nonatomic) IBOutlet UIButton *_Equals;
@property (weak, nonatomic) IBOutlet UIButton *_Plus;


- (IBAction)showInfo:(id)sender;
- (IBAction)Zero:(UIButton *)sender;
- (IBAction)One:(UIButton *)sender;
- (IBAction)Two:(UIButton *)sender;
- (IBAction)Three:(UIButton *)sender;
- (IBAction)Four:(UIButton *)sender;
- (IBAction)Five:(UIButton *)sender;
- (IBAction)Six:(UIButton *)sender;
- (IBAction)Seven:(UIButton *)sender;
- (IBAction)Eight:(UIButton *)sender;
- (IBAction)Nine:(UIButton *)sender;
- (IBAction)Plus:(UIButton *)sender;
- (IBAction)Equals:(UIButton *)sender;
- (IBAction)Point:(UIButton *)sender;


- (IBAction)Clear:(UIButton *)sender;


-(void)switchIT;

@end
