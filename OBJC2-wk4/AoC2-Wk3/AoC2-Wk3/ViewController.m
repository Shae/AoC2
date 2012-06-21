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
@synthesize save;
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
    eventlist = [[NSMutableArray alloc] init];  
    // Get the stored data before the view loads
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *saveData = [defaults objectForKey:@"saveData"];
    
    // Update the UI elements with the saved data
    eventField.text = saveData;

    [super viewDidLoad];

    
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
    [self setSave:nil];
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

-(IBAction)onSave:(id)sender{

        // Create strings and integer to store the text info
        NSString *saveData = [eventField text];
        
        // Store the data
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        [defaults setObject:saveData forKey:@"saveData"];
   
        [defaults synchronize];
        
        NSLog(@"Data saved");

}




@end
