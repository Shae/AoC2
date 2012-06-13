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
    datePicker = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
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

-(IBAction)onTouch:(id)sender
{
    if (nameField.isFirstResponder) {
        [nameField resignFirstResponder];
    }    
    
}

-(IBAction)onChange:(id)sender
{
    UIDatePicker *dateSelector = (UIDatePicker*) sender;
       if (dateSelector != nil) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil) {
            [dateFormatter setDateFormat:@"MMMM dd, @ h:mm a"];
        }
        newDate = [dateFormatter stringFromDate:dateSelector.date];
        NSLog(@"%@", newDate);

    }

}

-(IBAction)closeKeyboard
{
    [nameField resignFirstResponder];
}

-(IBAction)backToMain:(id)sender
{   

    if ((Delegate != nil) && (newDate != nil)){
            
    //Concatenate da stuffes
        eventData = [NSString stringWithFormat:@"%@ \n \t on    %@ \n \n", nameField.text, newDate];
        // NSLog(@"%@", eventData);
        
    //return to Main page 
        [Delegate didClose:eventData];
        [self dismissModalViewControllerAnimated:YES];
        
    }
}


@end
