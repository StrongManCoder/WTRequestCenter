//
//  UIAlertView+WTRequestCenter.m
//  WTRequestCenter
//
//  Created by SongWentong on 14-10-16.
//  Copyright (c) 2014年 song. All rights reserved.
//

#import "UIAlertView+WTRequestCenter.h"
#import "WTRequestCenter.h"
@implementation UIAlertView (WTRequestCenter)
+(void)showAlertWithMessage:(NSString*)message
{
    [self showAlertWithTitle:nil message:message duration:1.0];
}

+(void)showAlertWithTitle:(NSString*)title message:(NSString*)message duration:(NSTimeInterval)time
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:nil otherButtonTitles: nil];
    [alert show];
    [WTRequestCenter performBlock:^{
        [alert dismissWithClickedButtonIndex:0 animated:YES];
    } afterDelay:time];
}



@end
