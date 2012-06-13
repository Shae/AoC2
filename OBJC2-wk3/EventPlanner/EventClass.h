//
//  EventClass.h
//  EventPlanner
//
//  Created by Shae Klusman on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EventProto.h"

@interface EventClass : NSObject
{
    NSString *eventName;
    NSDate *eventDate;
    NSArray *eventArray;
    
}
-(void) saveToArray;
-(void) loadArray;



@end
