//
//  MainViewController.m
//  FSOcalc
//
//  Created by Shae Klusman on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize mainText;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{

    [self setMainText:nil];
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

- (IBAction)Zero:(UIButton *)sender {
    if( x == nil){
        x = @"0";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"0"];
        NSLog(@"%@", x);
    }
}

- (IBAction)One:(UIButton *)sender {
    if( x == nil){
        x = @"1";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"1"];
        NSLog(@"%@", x);
    }
}

- (IBAction)Two:(UIButton *)sender {
    if( x == nil){
        x = @"2";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"2"];
        NSLog(@"%@", x);
    }
}

- (IBAction)Three:(UIButton *)sender {
    if( x == nil){
        x = @"3";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"3"];
        NSLog(@"%@", x);
    }
}

- (IBAction)Four:(UIButton *)sender {
    if( x == nil){
        x = @"4";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"4"];
        NSLog(@"%@", x);
    }
}

- (IBAction)Five:(UIButton *)sender {
    if( x == nil){
        x = @"5";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"5"];
        NSLog(@"%@", x);
    }
}

- (IBAction)Six:(UIButton *)sender {
    if( x == nil){
        x = @"6";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"6"];
        NSLog(@"%@", x);
    }
}

- (IBAction)Seven:(UIButton *)sender {
    if( x == nil){
        x = @"7";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"7"];
        NSLog(@"%@", x);
    }
}

- (IBAction)Eight:(UIButton *)sender {
    if( x == nil){
        x = @"8";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"8"];
        NSLog(@"%@", x);
    }
}

- (IBAction)Nine:(UIButton *)sender {
    if( x == nil){
        x = @"9";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"9"];
        NSLog(@"%@", x);
    }
}

- (IBAction)Plus:(UIButton *)sender {
    if( x == nil){
        x = @"+";
        NSLog(@"%@", x);
    }else{
        x = [x stringByAppendingString: @"+"];
        NSLog(@"%@", x);
    }
}

- (IBAction)Equals:(UIButton *)sender {
    
}

- (IBAction)Toggle:(UISwitch *)sender {
}




- (IBAction)Clear:(UIButton *)sender {
}

@end
