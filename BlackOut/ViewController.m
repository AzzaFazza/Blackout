//
//  ViewController.m
//  BlackOut
//
//  Created by azza on 23/06/2014.
//  Copyright (c) 2014 Dotly. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize userLogin;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Makes the Keyboard go back in once it is used
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [userLogin resignFirstResponder];
    return NO;
}

- (UIStoryboard *)grabStoryboard {
    
    UIStoryboard *storyboard;
    storyboard = [UIStoryboard storyboardWithName:@"MainMenu_iPad" bundle:nil];
    return storyboard;
}

-(IBAction)login:(id)sender {
    UIStoryboard *storyboard = [self grabStoryboard];
    // show the storyboard
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"MainMenu"];
    self.view.window.rootViewController = vc;   
}
@end
