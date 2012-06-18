//
//  NewEventViewController.h
//  AoC2-wk4
//
//  Created by Shae Klusman on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "eventProtocol.h"


@interface NewEventViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UILabel *SlideLeft;
    IBOutlet UITextField *eventname;
    IBOutlet UIDatePicker *datePicker;
    id <eventProtocol> theDel;
    
}
@property (strong)  id <eventProtocol> theDel;

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
- (BOOL)textFieldShouldReturn:(UITextField *)textField;


@end
