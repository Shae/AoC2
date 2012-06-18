//
//  eventProtocol.h
//  AoC2-wk4
//
//  Created by Shae Klusman on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol eventProtocol <NSObject>

@required
-(void) passInfo: (NSString *) passEventData;

@end
