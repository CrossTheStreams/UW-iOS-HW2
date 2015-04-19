//
//  UIViewController+ColorTracking.m
//  UW_HW02_arhautau
//
//  Created by Andrew Hautau on 4/18/15.
//  Copyright (c) 2015 Andrew Hautau. All rights reserved.
//

#import "UIViewController+ColorTracking.h"

@implementation UIViewController (ColorTracking)

-(NSMutableDictionary*) colorCounts {
    return [[self tabBarController] colorCounts];
}


@end
