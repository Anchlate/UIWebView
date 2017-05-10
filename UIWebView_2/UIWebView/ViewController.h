//
//  ViewController.h
//  UIWebView
//
//  Created by Qianrun on 16/8/8.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol JSObjcDelegate <JSExport>
- (void)call;
- (void)getCall:(NSString *)callString;

@end

@interface ViewController : UIViewController


@end

