//
//  ARNativeTemplateViewController.m
//  ARTemplating
//
//  Created by Alex Reid on 23/05/2013.
//
//

#import "ARNativeTemplateViewController.h"
#import "GRMustache.h"

@interface ARNativeTemplateViewController () {
    GRMustacheTemplate *template;
    id obj;
}

@end

@implementation ARNativeTemplateViewController

const int RENDERS = 1000;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"GRMustache";

    template = [GRMustacheTemplate templateFromString:@"<h1>{{header}}</h1>\
                {{#bug}}\
                {{/bug}}\
                {{#items}}\
                {{#first}}\
                <li><strong>{{name}}</strong></li>\
                {{/first}}\
                {{#link}}\
                <li><a href=\"{{url}}\">{{name}}</a></li>\
                {{/link}}\
                {{/items}}\
                {{#empty}}\
                <p>The list is empty.</p>\
                {{/empty}}" error:nil];
    
    obj = @{
        @"header":@"Colors",
        @"items":@[
                @{@"name": @"red", @"first": @true, @"url": @"#Red"},
                @{@"name": @"green", @"link": @true, @"url": @"#Green"},
                @{@"name": @"blue", @"link": @true, @"url": @"#Blue"},
                @{@"name": @"red", @"first": @true, @"url": @"#Red"},
                @{@"name": @"green", @"link": @true, @"url": @"#Green"},
                @{@"name": @"blue", @"link": @true, @"url": @"#Blue"},
                @{@"name": @"red", @"first": @true, @"url": @"#Red"},
                @{@"name": @"green", @"link": @true, @"url": @"#Green"},
                @{@"name": @"blue", @"link": @true, @"url": @"#Blue"},
                @{@"name": @"red", @"first": @true, @"url": @"#Red"},
                @{@"name": @"green", @"link": @true, @"url": @"#Green"},
                @{@"name": @"blue", @"link": @true, @"url": @"#Blue"},
                @{@"name": @"red", @"first": @true, @"url": @"#Red"},
                @{@"name": @"green", @"link": @true, @"url": @"#Green"},
                @{@"name": @"blue", @"link": @true, @"url": @"#Blue"},
                @{@"name": @"red", @"first": @true, @"url": @"#Red"},
                @{@"name": @"green", @"link": @true, @"url": @"#Green"},
                @{@"name": @"blue", @"link": @true, @"url": @"#Blue"}
        ],
        @"empty":@false
    };
}

- (IBAction)renderTemplate:(id)sender {
    NSString *rendering = nil;

    NSDate *methodStart = [NSDate date];

    for(int i=0;i<=RENDERS;i++) {
        rendering = [template renderObject:obj error:nil];
    }

    NSDate *methodFinish = [NSDate date];
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];

    self.diag.text = [NSString stringWithFormat:@"%i renderings took %f", RENDERS, executionTime];
}
@end
