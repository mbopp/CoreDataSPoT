//
//  Photo.h
//  Core Data SPoT
//
//  Created by Michael Bopp on 4/6/13.
//  Copyright (c) 2013 Michael Bopp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Category, RecentPhoto;

@interface Photo : NSManagedObject

@property (nonatomic, retain) NSString * imageURL;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * subtitle;
@property (nonatomic, retain) NSString * unique;
@property (nonatomic, retain) Category *photoCategory;
@property (nonatomic, retain) RecentPhoto *recent;

@end
