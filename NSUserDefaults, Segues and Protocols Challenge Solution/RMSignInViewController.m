//
//  RMSignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Ryan Macaspac on 11/6/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "RMSignInViewController.h"
#import "RMCreateAccountViewController.h"

@interface RMSignInViewController ()

@end

@implementation RMSignInViewController

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[RMCreateAccountViewController class]])
    {
        RMCreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - RMCreateAccountViewController Delegate

- (void)didCancel
{
    NSLog(@"Cancel");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didCreateAccount
{
    NSLog(@"Create");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)loginButton:(UIButton *)sender
{
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    if ([self.usernameTextField.text isEqualToString:username] && [self.passwordTextField.text isEqualToString:password]) {
       [self performSegueWithIdentifier:@"toViewController" sender:self];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error Has Occurred" message:@"Invalid Username And Password" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
        [alert show];
    }
    
}

- (IBAction)createAccountButton:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"toCreateAccountViewContoller" sender:self];
}

@end
