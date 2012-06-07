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
@synthesize _Point;
@synthesize _Equals;
@synthesize _Plus;
@synthesize _Minus;
@synthesize _Multiply;
@synthesize _Divide;
@synthesize _Clear;
@synthesize _AllClear;
@synthesize _BGselector;






- (void)viewDidLoad
{

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ///// DEFAULT VALUES /////
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cheetah.jpg"]];
    screenNum = 0;
    holdNum = 0;
    answer = 0;
    actionTag = 0;
    [mySwitch addTarget:self action:@selector(switchIT) forControlEvents:UIControlEventValueChanged];
    
	
}

- (void)viewDidUnload
{

    [self setMainText:nil];
    
    BGswitch = nil;
    mySwitch = nil;
    
    [self setOne1:nil];
    [self setZero0:nil];
    [self setTwo2:nil];
    [self setThree3:nil];
    [self setFour4:nil];
    [self setFive5:nil];
    [self setSix6:nil];
    [self setSeven7:nil];
    [self setEight8:nil];
    [self setNine9:nil];

    [self set_Equals:nil];
    [self set_Plus:nil];
    [self set_Minus:nil];
    [self set_Multiply:nil];
    [self set_Divide:nil];
    [self set_Point:nil];
    
    [self set_Clear:nil];
    [self set_AllClear:nil];
    
    [self set_BGselector:nil];
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
    }else if ( screenString != nil){
        screenString = [screenString stringByAppendingString: @"."];
        NSLog(@"%@", screenString);
    }
    mainText.text = screenString;
}

///////////  Actions  //////////// 

- (IBAction)Plus:(UIButton *)sender {
    if (screenString == nil){
        mainText.text = nil;
        screenString = nil;
    }else if((screenString != nil) && (holdNum == 0)){
        holdNum = [mainText.text floatValue];
        mainText.text = nil;
        screenString = nil;
        NSLog(@"+");
        actionTag = 1;
    }else if ((screenString != nil) && (holdNum != 0 )) {
        holdNum = holdNum + [mainText.text floatValue];
        mainText.text = nil;
        screenString = nil;
        NSLog(@"+");
        actionTag = 1;
    }
    
}



- (IBAction)Minus:(UIButton *)sender {
    if (screenString == nil){
        mainText.text = nil;
        screenString = nil;
    }else if((screenString != nil) && (holdNum == 0)){
        holdNum = [mainText.text floatValue];
        mainText.text = nil;
        screenString = nil;
        NSLog(@"-");
        actionTag = 2;
    }else if ((screenString != nil) && (holdNum != 0 )) {
        holdNum = holdNum - [mainText.text floatValue];
        mainText.text = nil;
        screenString = nil;
        NSLog(@"-");
        actionTag = 2;
    }
}

- (IBAction)Multiply:(UIButton *)sender {
    if (screenString == nil){
        mainText.text = nil;
        screenString = nil;
    }else if((screenString != nil) && (holdNum == 0)){
        holdNum = [mainText.text floatValue];
        mainText.text = nil;
        screenString = nil;
        NSLog(@"x");
        actionTag = 3;
    }else if ((screenString != nil) && (holdNum != 0 )) {
        holdNum = holdNum * [mainText.text floatValue];
        mainText.text = nil;
        screenString = nil;
        NSLog(@"x");
        actionTag = 3;
    }
}

- (IBAction)Divide:(UIButton *)sender {
    if (screenString == nil){
        mainText.text = nil;
        screenString = nil;
    }else if((screenString != nil) && (holdNum == 0)){
        holdNum = [mainText.text floatValue];
        mainText.text = nil;
        screenString = nil;
        NSLog(@"/");
        actionTag = 4;
    }else if ((screenString != nil) && (holdNum != 0 )) {
        holdNum = holdNum / [mainText.text floatValue];
        mainText.text = nil;
        screenString = nil;
        NSLog(@"/");
        actionTag = 4;
    }
}


-(IBAction)actionTagMethod:(id)sender{
    
	if (([sender tag] == 0) && (holdNum == 0)){         
        actionTag = 0;                                  //do nothing
    }else if(([sender tag] == 0) && (actionTag == 0)){
        mainText.text = mainText.text;                    // screen stays the same
        NSLog(@"%@", mainText.text);
    }else if(([sender tag] == 0) && (actionTag == 1)){
        answer = holdNum + [mainText.text floatValue];    // holdNum + Screen = holdNum
        holdNum = 0;
        mainText.text = [NSString stringWithFormat:@"%0.2f", answer];
        screenString = [NSString stringWithFormat:@"%0.2f", answer];
        NSLog(@"%f", answer);
    }else if(([sender tag] == 0) && (actionTag == 2)){
        answer = holdNum - [mainText.text intValue];    // holdNum - Screen = holdNum
        holdNum = 0;
        mainText.text = [NSString stringWithFormat:@"%0.2f", answer];
        screenString = [NSString stringWithFormat:@"%0.2f", answer];
        NSLog(@"%f", answer);
    }else if(([sender tag] == 0) && (actionTag == 3)){
        answer = holdNum * [mainText.text floatValue];    // holdNum * Screen = holdNum
        holdNum = 0;
        mainText.text = [NSString stringWithFormat:@"%0.2f", answer];
        screenString = [NSString stringWithFormat:@"%0.2f", answer];
        NSLog(@"%f", answer);
    }else if(([sender tag] == 0) && (actionTag == 4)){
        answer = holdNum / [mainText.text floatValue];    // holdNum / Screen = holdNum
        holdNum = 0;
        mainText.text = [NSString stringWithFormat:@"%0.2f", answer];
        screenString = [NSString stringWithFormat:@"%0.2f", answer];
        NSLog(@"%f", answer);
    }
}




-(void)switchIT{
    if (mySwitch.on) {
        screenString    = nil;
        mainText.text   = @"0";
        NSLog(@"Calculator ON");
        One1.enabled    = YES;
        Two2.enabled    = YES;
        Three3.enabled  = YES;
        Four4.enabled   = YES;
        Five5.enabled   = YES;
        Six6.enabled    = YES;
        Seven7.enabled  = YES;
        Eight8.enabled  = YES;
        Nine9.enabled   = YES;
        _Point.enabled  = YES;
        _Plus.enabled   = YES;
        _Minus.enabled  = YES;
        _Divide.enabled = YES;
        _Multiply.enabled = YES;
        _Equals.enabled = YES;
        _Clear.enabled  = YES;
        _AllClear.enabled = YES;
        _BGselector.enabled = YES;
    }else{
        screenString    = nil;
        mainText.text   = nil;
        NSLog(@"Calculator powering down...");
        One1.enabled    = NO;
        One1.enabled    = NO;
        Two2.enabled    = NO;
        Three3.enabled  = NO;
        Four4.enabled   = NO;
        Five5.enabled   = NO;
        Six6.enabled    = NO;
        Seven7.enabled  = NO;
        Eight8.enabled  = NO;
        Nine9.enabled   = NO;
        Zero0.enabled   = NO;
        _Point.enabled  = NO;
        _Plus.enabled   = NO;
        _Minus.enabled  = NO;
        _Divide.enabled = NO;
        _Multiply.enabled = NO;
        _Equals.enabled = NO;
        _Clear.enabled  = NO;
        _AllClear.enabled = NO;
        _BGselector.enabled = NO;
    }
}


-(IBAction)BGtoggle:(id)sender {
    
    if (BGswitch.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cheetah.jpg"]];
        NSLog(@"Cheetah Print BG Selected");
    }
    
    if (BGswitch.selectedSegmentIndex == 1) {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"gator.jpg"]];
        NSLog(@"Gator Print BG Selected");
    }
    
    if (BGswitch.selectedSegmentIndex == 2) {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"zebra.jpg"]];
        NSLog(@"Zebra Print BG Selected");
    }
    
} 



- (IBAction)Clear:(UIButton *)sender {
        mainText.text = nil;
        screenString = nil;
}

- (IBAction)allClear:(UIButton *)sender {
    mainText.text = nil;
    screenString = nil;
    holdNum = 0;
    actionTag = 0;
}

@end
