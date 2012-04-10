//
//  DZViewController.m
//  dz-numberpad-done-helper
//
//  Created by  on 12-4-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DZViewController.h"
#import "DZNumberpadDoneHelper.h"
@interface DZViewController ()
@property(nonatomic,retain)DZNumberpadDoneHelper *numberpadDonehelper;
@end

@implementation DZViewController
@synthesize numberpadDonehelper;
- (void)viewDidLoad{
    self.numberpadDonehelper = [[[DZNumberpadDoneHelper alloc] initWithTarget:self doneAction:@selector(doneAction:)] autorelease];

    //add input view
    UITextField *field = [[[UITextField alloc] initWithFrame:CGRectMake(20,20,80, 30)] autorelease];
    field.borderStyle = UITextBorderStyleRoundedRect;
    field.keyboardType = UIKeyboardTypeNumberPad;
    
//    field.backgroundColor = [UIColor blueColor];
    [self.view addSubview:field];
}

- (void)doneAction:(id)sender{
    NSLog(@"Done");
    
}

- (void)viewDidUnload{
    self.numberpadDonehelper = nil;
}

- (void)viewWillAppear:(BOOL)animated{
    [self.numberpadDonehelper registerObservers];
}

- (void)viewDidDisappear:(BOOL)animated{
    [self.numberpadDonehelper unRegisterObservers];
}

@end
