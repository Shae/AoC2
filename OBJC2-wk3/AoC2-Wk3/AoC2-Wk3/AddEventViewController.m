//
//  AddEventViewController.m
//  AoC2-Wk3
//
//  Created by Shae Klusman on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController
@synthesize Delegate;





- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        Delegate = nil;
        // Custom initialization
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    nameField = nil;
    backgroundBtn = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


///////////////


-(IBAction)backToMain:(id)sender
{
    if (Delegate != nil) {
        [Delegate didClose:nameField.text];
        
    }
    [self dismissModalViewControllerAnimated:YES];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = [NSString stringWithString:@""];
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [nameField resignFirstResponder];
    return YES;
}

-(IBAction)closeKeyboard
{
    [nameField resignFirstResponder];
}
@end
