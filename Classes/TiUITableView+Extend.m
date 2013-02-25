/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiUITableView+Extend.h"
#import "TiUITableViewProxy+Extend.h"

@implementation TiUITableView (TiUITableView_Extend)

UIRefreshControl *_refreshControl;

-(void)setRefreshControl_:(id)args
{
    BOOL isRefreshControl = [TiUtils boolValue:args def:NO];

    if (isRefreshControl == YES)
    {
        _refreshControl = [[[UIRefreshControl alloc]init] autorelease];
        [_refreshControl addTarget:self action:@selector(refreshStart) forControlEvents:UIControlEventValueChanged];
        [[self tableView] addSubview:_refreshControl];
    }
}

-(void)setRefreshControlColor_:(id)args
{
    TiColor *val = [TiUtils colorValue:args];

    if (val != nil)
    {
        _refreshControl.tintColor = [[val _color] retain];
    }
}

-(void)refreshStart
{
    [_refreshControl beginRefreshing];
    
    if ([self.proxy _hasListeners:@"refreshstart"])
    {
        [self.proxy fireEvent:@"refreshstart"];
    }
}

-(void)refreshFinish:(id)args
{
    [_refreshControl endRefreshing];
}

@end
