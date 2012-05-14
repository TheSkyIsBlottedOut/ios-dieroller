//
//  TDSViewController.h
//  ThreeDSix
//
//  Created by Sekeol Kim on 5/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface TDSViewController : UIViewController
- (IBAction)rollDSix:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sideSelect;
@property (weak, nonatomic) IBOutlet UILabel *label;
@end
