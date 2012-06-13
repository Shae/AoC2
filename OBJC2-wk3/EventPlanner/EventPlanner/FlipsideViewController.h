//
//  FlipsideViewController.h
//  EventPlanner
//
//  Created by Shae Klusman on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventProto.h"

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate


- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;

@end

@interface FlipsideViewController : UIViewController <EventProto>
{
    

    __weak IBOutlet UIDatePicker *_datePicker;

    __weak IBOutlet UITextField *_eventField;
    

}

-(void) saveToArray;
-(void) loadArray;


- (IBAction)done:(id)sender;

- (IBAction)dismissKeyboard:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *eventField;

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end
