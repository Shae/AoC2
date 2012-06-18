//
//  ViewController.m
//  AoC2-wk4
//
//  Created by Shae Klusman on 6/18/12.
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

-(void) passInfo: (NSString *) passEventData;
{
    
};

-(void) onSlideRight
{
    NewEventViewController *newPage = [[NewEventViewController alloc]
        initWithNibName:@"AddEvent" bundle:nil];
    if (newPage != nil){
        newPage.delegate = self;
        [self presentModalViewController:newPage animated:YES];
    }
}

@end
