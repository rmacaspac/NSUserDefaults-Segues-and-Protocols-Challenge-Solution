//
//  RMViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Ryan Macaspac on 11/5/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "RMViewController.h"
#import "RMCreateAccountViewController.h"

@interface RMViewController ()

@end

@implementation RMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.usernameLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
