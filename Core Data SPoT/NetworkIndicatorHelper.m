//
//  NetworkIndicatorHelper.m
//  SPoT
//
//  Created by Michael Bopp on 3/22/13.
//  Copyright (c) 2013 Michael Bopp. All rights reserved.
//

#import "NetworkIndicatorHelper.h"

@interface NetworkIndicatorHelper ()

@property (readwrite, atomic) NSUInteger count; // use atomic to make sure thread safe since photo fethcing could be in another queue.

@end
@implementation NetworkIndicatorHelper

static NetworkIndicatorHelper *networkIndicatorHelper;

+ (void) setNetworkActivityIndicatorVisible:(BOOL) visible{
    if(!networkIndicatorHelper){
        networkIndicatorHelper = [[NetworkIndicatorHelper alloc]init];
    }
    if(visible){
        networkIndicatorHelper.count++;
    }else{
        networkIndicatorHelper.count--;
    }
    if(networkIndicatorHelper.count > 0){
        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    }else{
        [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    }
}

+ (BOOL) networkActivityIndicatorVisible{
    return networkIndicatorHelper.count > 0 ? YES : NO;
}

@end
