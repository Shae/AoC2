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
    self.view.backgroundColor = [UIColor blackColor];
    
    
    textlabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, 320, 100)];
    textlabel1.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"TriBG.jpg"]];
    //textlabel1.backgroundColor = [UIColor yellowColor]; 
    textlabel1.text = @"TEST1";
    textlabel1.textAlignment = UITextAlignmentCenter; 
    [self.view addSubview:textlabel1];

    textlabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 320, 100)];
    textlabel2.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"SqrBG.jpg"]];
    //textlabel2.backgroundColor = [UIColor orangeColor]; 
    textlabel2.text = @"TEST2";
    textlabel2.textAlignment = UITextAlignmentCenter; 
    [self.view addSubview:textlabel2];
    
    textlabel3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 275, 320, 100)];
    textlabel3.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"RectBG.jpg"]];
    //textlabel3.backgroundColor = [UIColor redColor]; 
    textlabel3.text = @"TEST3";
    textlabel3.textAlignment = UITextAlignmentCenter; 
    [self.view addSubview:textlabel3];
    
    textlabel4 = [[UILabel alloc] initWithFrame:CGRectMake(0, 400, 320, 20)];
    textlabel4.backgroundColor = [UIColor clearColor]; 
    textlabel4.textColor = [UIColor whiteColor];
    textlabel4.textAlignment = UITextAlignmentCenter; 
    textlabel4.text = @"Shae B. R. Klusman (AoC2  Class1206)";
    [self.view addSubview:textlabel4];
    
    
   /*
    ShapeFactory *factoryItem = [[ShapeFactory alloc] init];
    if (factoryItem != nil) {
        TriangleClass *theShape = (TriangleClass*)[factoryItem CreateShape:0];
        [theShape setBase:20];
        [theShape setHeight:25];
        [theShape GetNumSides];
        textlabel1.text = [NSString stringWithFormat:@"Shape: %@    Area: %i",[theShape GetName], [theShape GetArea]];
    }  */
    
    TriangleClass *theTri = (TriangleClass*) [ShapeFactory CreateShape:0];
    [theTri setBase:20];
    [theTri setHeight:25];
    [theTri GetNumSides];
    textlabel1.text = [NSString stringWithFormat:@"Shape: %@    Area: %i",[theTri GetName], [theTri GetArea]];
    
    /*
    ShapeFactory *factoryItem2 = [[ShapeFactory alloc] init];
    if (factoryItem2 != nil) {
        TriangleClass *theShape2 = (TriangleClass*)[factoryItem2 CreateShape:1];
        [theShape2 setBase:20];
        [theShape2 setHeight:20];
        [theShape2 GetNumSides];  
        textlabel2.text = [NSString stringWithFormat:@"Shape: %@    Area: %i",[theShape2 GetName], [theShape2 GetArea]];
    } 
    */
    SquareClass *theSqr = (SquareClass*) [ShapeFactory CreateShape:1];
    [theSqr setBase:20];
    [theSqr setHeight:20];
    [theSqr GetNumSides];
    textlabel2.text = [NSString stringWithFormat:@"Shape: %@    Area: %i",[theSqr GetName], [theSqr GetArea]];
    
    /*
    ShapeFactory *factoryItem3 = [[ShapeFactory alloc] init];
    if (factoryItem3 != nil) {
        TriangleClass *theShape3 = (TriangleClass*)[factoryItem3 CreateShape:2];
        [theShape3 setBase:20];
        [theShape3 setHeight:25];
        [theShape3 GetNumSides];
        textlabel3.text = [NSString stringWithFormat:@"Shape: %@    Area: %i",[theShape3 GetName], [theShape3 GetArea]];
    } 
    */
    
    RectangleClass *theRect = (RectangleClass*) [ShapeFactory CreateShape:2];
    [theRect setBase:15];
    [theRect setHeight:25];
    [theRect GetNumSides];
    textlabel3.text = [NSString stringWithFormat:@"Shape: %@    Area: %i",[theRect GetName], [theRect GetArea]];
    
    
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
