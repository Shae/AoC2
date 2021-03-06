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
@synthesize minimumDate;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        Delegate = nil;
    }
    
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    slideLeftLabel.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"slideLeft.png"]];
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSlideLeft:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [slideLeftLabel addGestureRecognizer:leftSwipe];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   // minimumDate = [ NSDate dateToday]; 
    datePicker.minimumDate = [NSDate date];
    nameField.text = @"Enter Event Name";
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    nameField = nil;
    backgroundBtn = nil;
    datePicker = nil;
    slideLeftLabel = nil;
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



-(void) onSlideLeft: (UISwipeGestureRecognizer*) recog
{
    
    if (recog.direction == UISwipeGestureRecognizerDirectionLeft) {
        if ((nameField.text != @"") && (nameField.text != @"Enter Event Name") )
        {   
            if (newDate != nil){
                eventData = [NSString stringWithFormat:@"%@ \n \t on    %@ \n \n", nameField.text, newDate];
                //return to Main page 
                [Delegate didClose:eventData];
            }

        }
        [self dismissModalViewControllerAnimated:YES];
    }
}

@end
