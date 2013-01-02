//
//  SecondTopViewController.m
//  LeftMenuDevViewController
//
//  Created by Michael Enriquez on 1/23/12.
//  Copyright (c) 2012 EdgeCase. All rights reserved.
//

#import "SecondTopViewController.h"

@implementation SecondTopViewController

@synthesize imageView;
@synthesize scrollView;

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  
    // shadowPath, shadowOffset, and rotation is handled by LeftMenuDevViewController.
    // You just need to set the opacity, radius, and color.
    self.view.layer.shadowOpacity = 0.75f;
    self.view.layer.shadowRadius = 10.0f;
    self.view.layer.shadowColor = [UIColor blackColor].CGColor;
    
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[MenuViewController class]]) {
        self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    }
    self.slidingViewController.underRightViewController = nil;
    self.slidingViewController.anchorLeftPeekAmount     = 0;
    self.slidingViewController.anchorLeftRevealAmount   = 0;
    self.slidingViewController.anchorRightRevealAmount =200.0f;
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];

    id path = @"http://s4.haivl.com/data/photos2/20130101/4d0428c860df408bbe8c9419f68eb6f6/medium-187100f6a2f8465fb2ff0a11b4624e59-400.jpg";
    NSURL *url = [NSURL URLWithString:path];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [[UIImage alloc] initWithData:data];
    self.imageView.image = img;
    
    self.scrollView.contentSize = self.imageView.image.size;
    self.imageView.frame = CGRectMake(0, 0, self.imageView.image.size.width, self.imageView.image.size.height);
}

- (IBAction)revealMenu:(id)sender
{
  [self.slidingViewController anchorTopViewTo:ECRight];
}

@end
