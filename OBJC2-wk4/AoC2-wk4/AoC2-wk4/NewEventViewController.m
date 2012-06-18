//
//  NewEventViewController.m
//  AoC2-wk4
//
//  Created by Shae Klusman on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NewEventViewController.h"
#import "eventProtocol.h"

@interface NewEventViewController ()

@end

@implementation NewEventViewController
@synthesize theDel;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        theDel = nil;
    }
    return self;
}

- (void)viewDidLoad
{
    eventname.text = @"Enter Event Name";
    datePicker.minimumDate = [NSDate date];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    eventname.text = @"";
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;
}

@end
