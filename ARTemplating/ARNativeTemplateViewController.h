//
//  ARNativeTemplateViewController.h
//  ARTemplating
//
//  Created by Alex Reid on 23/05/2013.
//
//

#import <UIKit/UIKit.h>

@interface ARNativeTemplateViewController : UIViewController
- (IBAction)renderTemplate:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *target;
@property (weak, nonatomic) IBOutlet UILabel *diag;

@end
