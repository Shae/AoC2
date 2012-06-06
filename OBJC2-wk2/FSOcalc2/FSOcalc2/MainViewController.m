//
//  MainViewController.m
//  FSOcalc2
//
//  Created by Shae Klusman on 6/5/12.
//  Copyright (c) 2012 ____MyCompanyName____. All rights reserved.
//

#import "MainViewController.h"



@implementation MainViewController;

@synthesize Zero0;
@synthesize One1;
@synthesize Two2;
@synthesize Three3;
@synthesize Four4;
@synthesize Five5;
@synthesize Six6;
@synthesize Seven7;
@synthesize Eight8;
@synthesize Nine9;

// Altered Method for GeekyLemon.com
-(IBAction)numKey:(id)sender {
	currentNum = currentNum*10 + (float)[sender tag]; // add the clicked btn's ID tag and move current number up by 10.
	calcScreen.text = [NSString stringWithFormat:@"%2f",currentNum]; // Display new number on calc screen.
}

// Altered Method for GeekyLemon.com
-(IBAction)actionPressed:(id)sender {

    
	if (action == 0) result = currentNum; // if "=" hit display current num.
	else {
		switch (action) {
			case 1:
				result = result + currentNum;
				break;
			case 2:
				result = result - currentNum;
				break;
			case 3:
				result = result * currentNum;
				break;
			case 4:
				result = result / currentNum;
				break;
            case 5:
				action = 0;
				break;

		}
	}
    
	currentNum = 0;
	calcScreen.text = [NSString stringWithFormat:@"%2f",result];  // display result on screen
    action = [sender tag];
    if ([sender tag] == 0) result = 0;  //if tag id is 0 (=) set result to 0

}

// Altered Method for GeekyLemon.com
-(IBAction)clear {
	currentNum = 0;
	calcScreen.text = @"0";
}

// Altered Method for GeekyLemon.com
-(IBAction)clearAll {
	currentNum = 0;
	calcScreen.text = @"0";
	action = 0;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    ///// DEFAULT VALUES /////
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"zebra.jpg"]];
    [mySwitch addTarget:self action:@selector(switchIT) forControlEvents:UIControlEventValueChanged];
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

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)showInfo:(id)sender
{    
    FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
}

-(void)switchIT{
    if (mySwitch.on) {

        NSLog(@"Switch is on");
        
        One1.enabled = YES;
        Two2.enabled = YES;
        Three3.enabled = YES;
        Four4.enabled = YES;
        Five5.enabled = YES;
        Six6.enabled = YES;
        Seven7.enabled = YES;
        Eight8.enabled = YES;
        Nine9.enabled = YES;

        
        
    }else{

        NSLog(@"Switch is off");
        
        One1.enabled = NO;
        One1.enabled = NO;
        Two2.enabled = NO;
        Three3.enabled = NO;
        Four4.enabled = NO;
        Five5.enabled = NO;
        Six6.enabled = NO;
        Seven7.enabled = NO;
        Eight8.enabled = NO;
        Nine9.enabled = NO;
        Zero0.enabled = NO;

    }
}

-(IBAction)BGtoggle:(id)sender {
    
    if (BGswitch.selectedSegmentIndex == 0) {
        
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"zebra.jpg"]];
        NSLog(@"White BG Selected");
        
    }
    
    if (BGswitch.selectedSegmentIndex == 1) {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cheetah.jpg"]];
        NSLog(@"Blue BG Selected");
        
    }
    
    if (BGswitch.selectedSegmentIndex == 2) {
        
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"gator.jpg"]];
        NSLog(@"Green BG Selected");
        
    }
    
} 

@end
