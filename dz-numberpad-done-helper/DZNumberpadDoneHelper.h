//
//  DZNumberpadDoneHelper.h
//  dz-numberpad-done-helper
//
//  Created by  on 12-4-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DZNumberpadDoneHelper : NSObject
- (id)initWithTarget:(id)target doneAction:(SEL)doneAction;
- (void)registerObservers;
- (void)unRegisterObservers;
@end
