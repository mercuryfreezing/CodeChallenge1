//
//  HomePageViewController.m
//  CodeChallenge1
//
//  Created by roshan on 02/10/2014.
//  Copyright (c) 2014 learningIOS. All rights reserved.
//

#import "HomePageViewController.h"

@interface HomePageViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlString = @"http://www.mobilemakers.co";

    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];

    [self.webView loadRequest:urlRequest];
    // Do any additional setup after loading the view.
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
