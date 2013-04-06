//
//  NetworkIndicatorHelper.h
//  SPoT
//
//  Created by Michael Bopp on 3/22/13.
//  Copyright (c) 2013 Michael Bopp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkIndicatorHelper : NSObject

+ (void) setNetworkActivityIndicatorVisible:(BOOL) visible;
+ (BOOL) networkActivityIndicatorVisible;

@end
