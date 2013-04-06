//
//  RecentPhoto.h
//  Core Data SPoT
//
//  Created by Michael Bopp on 4/6/13.
//  Copyright (c) 2013 Michael Bopp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Photo;

@interface RecentPhoto : NSManagedObject

@property (nonatomic, retain) NSDate * lastViewed;
@property (nonatomic, retain) Photo *photo;

@end
