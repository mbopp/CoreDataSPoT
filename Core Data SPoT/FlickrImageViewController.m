//
//  FlickrImageViewController.m
//  SPoT
//
//  Created by Michael Bopp on 3/10/13.
//  Copyright (c) 2013 Michael Bopp. All rights reserved.
//

#import "FlickrImageViewController.h"
#import "RecentPhotos.h"
#import "FlickrFetcher.h"

@interface FlickrImageViewController ()

@end

@implementation FlickrImageViewController

- (void)setImageDictionary:(NSDictionary *)imageDictionary
{
//    NSLog(@"%@", imageDictionary);
    [RecentPhotos addPhotoToRecents:imageDictionary];
    self.imageURL = [FlickrFetcher urlForPhoto:imageDictionary format:FlickrPhotoFormatLarge];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}


@end
