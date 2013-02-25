/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiUITextField+Extend.h"
#import "TiUITextFieldProxy+Extend.h"

@implementation TiUITextField (TiUITextField_Extend)

-(void)setHintColor_:(id)args
{
    TiColor *val = [TiUtils colorValue:args];
    
    if (val != nil)
    {
        [(UITextField *)[self textWidgetView] setValue:[[val _color] retain] forKeyPath:@"_placeholderLabel.textColor"];
    }
}

@end
