//
//  Category.h
//  Core Data SPoT
//
//  Created by Michael Bopp on 4/6/13.
//  Copyright (c) 2013 Michael Bopp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Photo;

@interface Category : NSManagedObject

@property (nonatomic, retain) NSString * categoryName;
@property (nonatomic, retain) Photo *photos;

@end
