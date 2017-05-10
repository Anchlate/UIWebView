//
//  NativeOcClass.h
//  UIWebView
//
//  Created by Qianrun on 16/8/8.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NativeOcClass : NSObject

+(BOOL)callNativeUIWithTitle:(NSString *) title andContent:(NSString *)content;

@end
