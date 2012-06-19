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
    

}

@property (nonatomic, retain) NSMutableArray *eventlist;
-(IBAction)goToAddEventPage:(id)sender;
@end
