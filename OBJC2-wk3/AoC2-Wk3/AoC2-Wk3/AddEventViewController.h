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
-(void)didClose: (NSString *) passEventData;

@end

////////////////////

@interface AddEventViewController : UIViewController <UITextFieldDelegate>
{
    id <EventViewDelegate> Delegate;  
    __weak IBOutlet UITextField *nameField;
    __weak IBOutlet UIButton *backgroundBtn;
    __weak IBOutlet UIDatePicker *datePicker;
    NSString *newDate;
    NSString *eventData;

}

@property (strong) id<EventViewDelegate> Delegate;
@property(nonatomic,retain) NSDate        *minimumDate;   

-(IBAction)onTouch:(id)sender;

-(IBAction)onChange:(id)sender;

-(IBAction)backToMain:(id)sender;

-(IBAction)closeKeyboard;

@end


