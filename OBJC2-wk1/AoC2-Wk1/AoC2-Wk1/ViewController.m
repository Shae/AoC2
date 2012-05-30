//
//  ViewController.m
//  AoC2-Wk1
//
//  Created by Shae Klusman on 5/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "ShapeClass.h"
#import "TriangleClass.h"
#import "SquareClass.h"
#import "RectangleClass.h"
#import "ShapeFactory.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{


    /*
    ShapeClass *ShapeInfo = [[ShapeClass alloc] init];
    if(ShapeInfo != nil)
        {
            [ShapeInfo GetName];
            [ShapeInfo GetNumSides];
            
        }
    */
    
    textlabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, 320, 100)];
    textlabel1.backgroundColor = [UIColor yellowColor]; 
    textlabel1.text = @"TEST1";
    [self.view addSubview:textlabel1];
    
    textlabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 320, 100)];
    textlabel2.backgroundColor = [UIColor orangeColor]; 
    textlabel2.text = @"TEST2";
    [self.view addSubview:textlabel2];
    
    textlabel3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 275, 320, 100)];
    textlabel3.backgroundColor = [UIColor redColor]; 
    textlabel3.text = @"TEST3";
    [self.view addSubview:textlabel3];
    
    
    
    ShapeFactory *_triangle = [[ShapeFactory alloc] init];
    if (_triangle != nil) {
        ShapeClass *theShape = [_triangle CreateShape:0];
        //ShapeClass *mySides = [_triangle sides];
        [theShape GetNumSides];
        [theShape GetName];
        [theShape GetArea];
        
    }
    
    
    
    
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
