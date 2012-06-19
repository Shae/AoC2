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


-(void)viewWillAppear:(BOOL)animated
{
    
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSlideRight:)]; 
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [slideRight addGestureRecognizer:rightSwipe];
}

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

-(void) passInfo: (NSString *) passEventName : (NSString*) passEventDate
{
    
};

-(void) onSlideRight: (UISwipeGestureRecognizer*) recog
{
    if (recog.direction == UISwipeGestureRecognizerDirectionRight) {
        NewEventViewController *newPage = [[NewEventViewController alloc] initWithNibName:@"newEvent" bundle:nil];
        if (newPage != nil){
            newPage.theDel = self;
            newPage.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;        
            //  UIModalTransitionStyleCrossDissolve;
            [self presentModalViewController:newPage animated:YES];
        }
    }

}

@end
