//
//  FlipsideViewController.m
//  EventPlanner
//
//  Created by Shae Klusman on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"

@interface FlipsideViewController ()

@end

@implementation FlipsideViewController

@synthesize eventField = _eventField;
@synthesize locationField = _locationField;
@synthesize delegate = _delegate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setEventField:nil];
    [self setLocationField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}


- (IBAction)dismissKeyboard:(id)sender {
    [cost resignFirstResponder];
    [income resignFirstResponder];  
}

- (IBAction)saveBtn:(id)sender {
}
@end
