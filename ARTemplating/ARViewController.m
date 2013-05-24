//
//  ARViewController.m
//  ARTemplating
//
//  Created by Alex Reid on 23/05/2013.
//
//

#import "ARViewController.h"

@interface ARViewController ()

@end

@implementation ARViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"web"]];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
}

@end
