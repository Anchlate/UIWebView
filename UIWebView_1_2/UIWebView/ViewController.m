//
//  ViewController.m
//  UIWebView
//
//  Created by Qianrun on 16/8/8.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import "ViewController.h"
#import "NativeOcClass.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "TestJSObject.h"

@interface ViewController ()<UIWebViewDelegate, JSObjcDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, strong) JSContext *jsContext;
- (IBAction)action:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.jsContext = [self.webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    self.jsContext[@"anchlate"] = self;
    
//    [self.jsContext evaluateScript:@"var name = 'mmmmmmmmmm'"];
    
    self.jsContext.exceptionHandler = ^(JSContext *context, JSValue *exceptionValue) {
        context.exception = exceptionValue;
        NSLog(@"异常信息：%@", exceptionValue);
    };
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]]];
    
}

- (void)nslooog:(NSString *)str {
    
    
    NSLog(@".............df.as.d调用方法:%@", str);
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
    
}

- (void)call{
    
    NSLog(@"calllll");
    
    /*
    // 之后在回调js的方法Callback把内容传出去
//    JSValue *Callback = self.jsContext[@"Callback"];
    
    //传值给web端
//    [Callback callWithArguments:@[@"唤起本地OC回调完成"]];
    */
    
    NSArray *args = [JSContext currentArguments];
    NSLog(@"////args:%@", args);
    
    

}

//在这个方法中捕获到图片的点击事件和被点击图片的url
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    NSString *path=[[request URL] absoluteString];
    NSLog(@"......path:%@",path);
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(UIButton *)sender {
    // 之后在回调js的方法Callback把内容传出去
//    JSValue *Callback = self.jsContext[@"callWebFunc"];
    
    //传值给web端
//    [Callback callWithArguments:@[@"唤起本地OC回调完成"]];
    
}
@end