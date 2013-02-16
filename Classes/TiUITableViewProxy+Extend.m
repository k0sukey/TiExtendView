/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiUITableViewProxy+Extend.h"
#import "TiUITableView+Extend.h"

@implementation TiUITableViewProxy (TiUITableViewProxy_Extend)

-(void)refreshFinish:(id)args
{
    TiThreadPerformOnMainThread(^{[(TiUITableView*)[self view] refreshFinish:args];}, NO);
}

@end
