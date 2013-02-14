/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiUIScrollableView+Extend.h"
#import "TiUIScrollableViewProxy+Extend.h"

@implementation TiUIScrollableView (TiUIScrollableView_Extend)

-(void)setPagingControlCurrentIndicatorColor_:(id)args
{
    TiColor* val = [TiUtils colorValue:args];
    
    if (val != nil)
    {
        UIPageControl *pg = [self pagecontrol];
        [pg setCurrentPageIndicatorTintColor:[[val _color] retain]];
        pg.currentPageIndicatorTintColor = [[val _color] retain];

        if (showPageControl && (scrollview != nil) && ([[scrollview subviews] count] > 0))
        {
            [self refreshScrollView:[self bounds] readd:NO];
        }
    }
}

-(void)setPagingControlIndicatorColor_:(id)args
{
    TiColor* val = [TiUtils colorValue:args];

    if (val != nil)
    {
        UIPageControl *pg = [self pagecontrol];
        [pg setPageIndicatorTintColor:[[val _color] retain]];
        pg.pageIndicatorTintColor = [[val _color] retain];

        if (showPageControl && (scrollview != nil) && ([[scrollview subviews] count] > 0))
        {
            [self refreshScrollView:[self bounds] readd:NO];
        }
    }
}

@end
