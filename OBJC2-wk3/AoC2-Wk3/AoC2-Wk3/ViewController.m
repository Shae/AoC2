//
//  ViewController.m
//  AoC2-Wk3
//
//  Created by Shae Klusman on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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


-(IBAction)goToAddEventPage:(id)sender
{
    AddEventViewController *addEventPage = [[AddEventViewController alloc]initWithNibName:@"AddEvent" bundle:nil];
    if (addEventPage != nil){
        [self presentModalViewController:addEventPage animated:YES];
    }
}







@end
