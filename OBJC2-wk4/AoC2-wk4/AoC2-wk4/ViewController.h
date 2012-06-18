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

@interface ViewController : UIViewController <newEventDelegate>
{
    IBOutlet UILabel *slideRight;
    IBOutlet UITextView *textView;
}

-(void) passInfo:(NSString *) passEventData;  // from Protocol
-(void) onSlideRight;

@end
