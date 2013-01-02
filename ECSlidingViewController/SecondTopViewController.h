//
//  SecondTopViewController.h
//  LeftMenuDevViewController
//
//  Created by Michael Enriquez on 1/23/12.
//  Copyright (c) 2012 EdgeCase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftMenuDevViewController.h"
#import "MenuViewController.h"

@interface SecondTopViewController : UIViewController

//@property (nonatomic, strong) IBOutlet UIImage *img;
@property(weak,nonatomic) IBOutlet UIImageView *imageView;
@property(weak,nonatomic) IBOutlet UIScrollView *scrollView;

- (IBAction)revealMenu:(id)sender;

@end
