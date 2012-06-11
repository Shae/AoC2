//
//  FlipsideViewController.h
//  EventPlanner
//
//  Created by Shae Klusman on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *eventField;

@property (weak, nonatomic) IBOutlet UITextField *locationField;

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)saveBtn:(id)sender;

- (IBAction)done:(id)sender;

- (IBAction)dismissKeyboard:(id)sender;
@end
