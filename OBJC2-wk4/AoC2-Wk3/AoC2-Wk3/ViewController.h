//
//  ViewController.h
//  AoC2-Wk3
//
//  Created by Shae Klusman on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController <EventViewDelegate>
{

    IBOutlet UITextView *eventField;
    NSMutableArray *eventlist;
    __weak IBOutlet UILabel *addEventLabel;
    UISwipeGestureRecognizer *rightSwipe;
    

}
@property (weak, nonatomic) IBOutlet UIButton *save;

@property (nonatomic, retain) NSMutableArray *eventlist;
-(void) onSlideRight: (UISwipeGestureRecognizer*) recog;
-(IBAction)onSave:(id)sender;
@end
