//
//  RMSignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Ryan Macaspac on 11/6/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RMCreateAccountViewController.h"

@interface RMSignInViewController : UIViewController <RMCreateAccountViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) RMViewController *userLogin;

- (IBAction)loginButton:(UIButton *)sender;
- (IBAction)createAccountButton:(UIBarButtonItem *)sender;



@end
