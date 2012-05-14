//
//  TDSViewController.m
//  ThreeDSix
//
//  Created by Sekeol Kim on 5/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TDSViewController.h"

@interface TDSViewController ()

@end

@implementation TDSViewController
@synthesize sideSelect;
@synthesize label;

-(BOOL)canBecomeFirstResponder {
  return YES;
}

-(void)viewDidAppear:(BOOL)animated {
  [self becomeFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  label.layer.borderColor = [UIColor blackColor].CGColor;
  label.layer.borderWidth = 1.0;
}

- (void)viewDidUnload
{
    [self setLabel:nil];
  [self setSideSelect:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)rollDSix:(id)sender {
  int sides = [[sideSelect titleForSegmentAtIndex: sideSelect.selectedSegmentIndex] intValue];
  NSString *test = [NSString stringWithFormat: @"%d", (arc4random() % sides + 1)];
  [label setText:test];
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
  [self rollDSix:self];
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
}

@end
