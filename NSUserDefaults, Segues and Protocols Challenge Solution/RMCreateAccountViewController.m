//
//  RMCreateAccountViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Ryan Macaspac on 11/6/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "RMCreateAccountViewController.h"

@interface RMCreateAccountViewController ()

@end

@implementation RMCreateAccountViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createButton:(UIButton *)sender
{
    
    
    // Setting values to NSUserDefaults
    
    if ((self.usernameTextField.text != nil) &&  (self.passwordTextField.text != nil) && [self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text])
    {
        [[NSUserDefaults standardUserDefaults] setObject:self.usernameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self.delegate didCreateAccount];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error Has Occurred" message:@"Please ensure passwords match" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
        [alert show];
    }
    
   
    
    
    
}

- (IBAction)cancelButton:(UIButton *)sender
{
    [self.delegate didCancel];
}
@end
