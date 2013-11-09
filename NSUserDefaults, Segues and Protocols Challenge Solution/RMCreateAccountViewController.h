//
//  RMCreateAccountViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Ryan Macaspac on 11/6/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RMViewController.h"

#define USER_NAME @"username" 
#define USER_PASSWORD @"password"

@protocol RMCreateAccountViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didCreateAccount;

@end

@interface RMCreateAccountViewController : UIViewController

@property (weak, nonatomic) id <RMCreateAccountViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;
@property (strong, nonatomic) RMViewController *userLogin;

- (IBAction)createButton:(UIButton *)sender;
- (IBAction)cancelButton:(UIButton *)sender;
@end
