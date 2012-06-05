//
//  MainViewController.h
//  FSOcalc
//
//  Created by Shae Klusman on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>{
    NSString *x;
    NSNumber *y;
}
@property (weak, nonatomic) IBOutlet UITextField *mainText;
- (IBAction)Toggle:(UISwitch *)sender;
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

- (IBAction)Clear:(UIButton *)sender;




@end
