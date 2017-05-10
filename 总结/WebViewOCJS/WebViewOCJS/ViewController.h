//
//  ViewController.h
//  WebViewOCJS
//
//  Created by Qianrun on 16/9/5.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol JSObjcDelegate <JSExport>

// 网页调用oc的方法
- (void)OCFunction;

@end


@interface ViewController : UIViewController


@end

