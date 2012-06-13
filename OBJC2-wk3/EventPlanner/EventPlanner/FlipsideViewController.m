//
//  FlipsideViewController.m
//  EventPlanner
//
//  Created by Shae Klusman on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"
#import "EventProto.h"

@interface FlipsideViewController ()

@end

@implementation FlipsideViewController


@synthesize eventField = _eventField;
@synthesize delegate = _delegate;
@synthesize datePicker = _datePicker;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setEventField:nil];
    [self setDatePicker:nil];

    
    _datePicker = nil;
    _eventField = nil;


    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Actions


//// From Protocol ////

-(void) saveToArray{
    
}

-(void) loadArray{

}

///// End from Protocol /////
- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}


- (IBAction)dismissKeyboard:(id)sender {  //Large hidden button in background
    [_eventField resignFirstResponder];
}


@end
