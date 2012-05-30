//
//  ViewController.m
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "ShapeClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    textlabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    ShapeClass1 = [[ShapeClass alloc] init];
    if(ShapeClass1 != nil)
    {
        
    }
    
    [self.view addSubview:textlabel];
    textlabel.text = [ShapeClass1 GetName];
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

@end
