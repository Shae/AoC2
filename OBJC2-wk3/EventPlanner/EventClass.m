//
//  EventClass.m
//  EventPlanner
//
//  Created by Shae Klusman on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EventClass.h"
#import "EventProto.h"

@implementation EventClass


-(id)init
{
    self = [super init];
    return self;
    
}


-(void) saveToArray{
    NSString *newevent = [NSString stringWithFormat:@" %@,   %@", eventName, eventDate]; 
    
    
}

-(void) loadArray{
    
    
}

@end
