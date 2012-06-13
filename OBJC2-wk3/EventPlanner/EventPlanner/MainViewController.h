//
//  MainViewController.h
//  EventPlanner
//
//  Created by Shae Klusman on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"
#import "EventProto.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate, EventProto>

- (IBAction)showInfo:(id)sender;

@end
