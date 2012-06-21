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


-(void)viewWillAppear:(BOOL)animated
{
    addEventLabel.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"slideR2.png"]];
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSlideRight:)]; 
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [addEventLabel addGestureRecognizer:rightSwipe];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    eventlist = [[NSMutableArray alloc] init];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{

}


-(void)didClose: (NSString *) passEventData
{

    eventField.text = [eventField.text stringByAppendingString:passEventData];
    //[eventlist addObject:passEventData];  
}



- (void)viewDidUnload
{
    addEventLabel = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


-(void) onSlideRight: (UISwipeGestureRecognizer*) recog
{
    if (recog.direction == UISwipeGestureRecognizerDirectionRight) {
        AddEventViewController *newPage = [[AddEventViewController alloc] initWithNibName:@"addEvent" bundle:nil];
        if (newPage != nil){
            newPage.Delegate = self;
            newPage.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;        
            //  UIModalTransitionStyleCrossDissolve;
            [self presentModalViewController:newPage animated:YES];
        }
    }
    
}




@end
