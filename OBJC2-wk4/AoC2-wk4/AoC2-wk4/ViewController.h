//
//  ViewController.h
//  AoC2-wk4
//
//  Created by Shae Klusman on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewEventViewController.h"
#import "eventProtocol.h"

@interface ViewController : UIViewController <eventProtocol>
{
    IBOutlet UILabel *slideRight;
    IBOutlet UITextView *textView;
    UISwipeGestureRecognizer *rightSwipe;
}
  

-(void) passInfo: (NSString *) passEventName : (NSString*) passEventDate;  // from Protocol
-(void) onSlideRight: (UISwipeGestureRecognizer*) recog;

@end
