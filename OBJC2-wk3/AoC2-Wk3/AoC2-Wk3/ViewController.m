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
@synthesize eventlist;

- (void)viewDidLoad
{
    [super viewDidLoad];
    eventlist = [[NSMutableArray alloc] init];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
   /* for (NSString *n in eventlist){
        NSLog(@"%@", n);
        eventField.text = n;

    } */
    
    
    //NSLog(@"TEST ARRAY FEED: %@", eventlist);
}


-(void)didClose: (NSString *) passEventData
{

    eventField.text = [eventField.text stringByAppendingString:passEventData];
    //[eventlist addObject:passEventData];  
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
        addEventPage.delegate = self;
        [self presentModalViewController:addEventPage animated:YES];
    }
}







@end
