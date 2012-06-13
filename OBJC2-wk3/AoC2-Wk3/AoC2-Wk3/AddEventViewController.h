//
//  AddEventViewController.h
//  AoC2-Wk3
//
//  Created by Shae Klusman on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol EventViewDelegate <NSObject>

@required
-(void)didClose: (NSString *) passEventName;

@end

////////////////////

@interface AddEventViewController : UIViewController <UITextFieldDelegate>
{
    id <EventViewDelegate> Delegate;  // Why does a protocol need an ID?  Isn't it already part of the fun since its at the top of this file?
    __weak IBOutlet UITextField *nameField;
    __weak IBOutlet UIButton *backgroundBtn;
    __weak IBOutlet UIDatePicker *datePicker;
    NSString *newDate;
    NSString *eventData;

}

@property (strong) id<EventViewDelegate> Delegate;


-(IBAction)onTouch:(id)sender;
-(IBAction)onChange:(id)sender;

-(IBAction)backToMain:(id)sender;

-(IBAction)closeKeyboard;

@end


