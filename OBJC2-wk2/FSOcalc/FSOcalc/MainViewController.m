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
//@synthesize mySwitch;




- (void)viewDidLoad
{

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ///// DEFAULT VALUES /////
    screenNum = 0;
    holdNum = 0;
    answer = 0;
    [mySwitch addTarget:self action:@selector(switchIT) forControlEvents:UIControlEventValueChanged];
    
	
}

- (void)viewDidUnload
{

    [self setMainText:nil];

    mySwitch = nil;
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
    if( screenString == nil){
        screenString = @"0";
        NSLog(@"%@", screenString);
    }else{
        screenString = [screenString stringByAppendingString: @"0"];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

- (IBAction)One:(UIButton *)sender {
    if( screenString == nil){
        screenString = @"1";
        NSLog(@"%@", screenString);
    }else{
        screenString = [screenString stringByAppendingString: @"1"];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

- (IBAction)Two:(UIButton *)sender {
    if( screenString == nil){
        screenString = @"2";
        NSLog(@"%@", screenString);
    }else{
        screenString = [screenString stringByAppendingString: @"2"];
        NSLog(@"%@", screenString);
    }
     mainText.text = screenString;
}

- (IBAction)Three:(UIButton *)sender {
    if( screenString == nil){
        screenString = @"3";
        NSLog(@"%@", screenString);
    }else{
        screenString = [screenString stringByAppendingString: @"3"];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

- (IBAction)Four:(UIButton *)sender {
    if( screenString == nil){
        screenString = @"4";
        NSLog(@"%@", screenString);
    }else{
        screenString = [screenString stringByAppendingString: @"4"];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

- (IBAction)Five:(UIButton *)sender {
    if( screenString == nil){
        screenString = @"5";
        NSLog(@"%@", screenString);
    }else{
        screenString = [screenString stringByAppendingString: @"5"];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

- (IBAction)Six:(UIButton *)sender {
    if( screenString == nil){
        screenString = @"6";
        NSLog(@"%@", screenString);
    }else{
        screenString = [screenString stringByAppendingString: @"6"];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

- (IBAction)Seven:(UIButton *)sender {
    if( screenString == nil){
        screenString = @"7";
        NSLog(@"%@", screenString);
    }else{
        screenString = [screenString stringByAppendingString: @"7"];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

- (IBAction)Eight:(UIButton *)sender {
    if( screenString == nil){
        screenString = @"8";
        NSLog(@"%@", screenString);
    }else{
        screenString = [screenString stringByAppendingString: @"8"];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

- (IBAction)Nine:(UIButton *)sender {
    if( screenString == nil){
        screenString = @"9";
        NSLog(@"%@", screenString);
    }else{
        screenString = [screenString stringByAppendingString: @"9"];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

- (IBAction)Point:(UIButton *)sender {
    if( screenString == nil){
        screenString = @"0.";
        NSLog(@"%@", screenString);
    }else if (screenString ) {
        screenString = [screenString stringByAppendingString: @"."];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

- (IBAction)Plus:(UIButton *)sender {
    if (screenString == @""){
        mainText.text = @"";
        screenString = @"";
    }else if((screenString != @"") && (holdNum == 0)){
        holdNum = [screenString floatValue];
        mainText.text = @"";
        screenString = @"";
    }else if ((screenString != @"") && (holdNum != 0 )) {
        holdNum = holdNum + [screenString floatValue];
        mainText.text = @"";
        screenString = @"";
    }

}

- (IBAction)Equals:(UIButton *)sender {
    if ((screenString != @"") && (holdNum != 0)){
        answer = holdNum + [screenString floatValue];
        NSLog(@"%f", answer);
       
        mainText.text = [NSString stringWithFormat: @"%f",answer];
      
    }
}
    


-(void)switchIT{
    if (mySwitch.on) {
        NSLog(@"Switch is on");
    }else{
        NSLog(@"Switch is off");
    }
}








- (IBAction)Clear:(UIButton *)sender {
        mainText.text = @"";
        screenString = @"";
    holdNum = 0;
    
}

@end
