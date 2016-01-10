//
//  AGViewController.m
//  NavigationRW
//
//  Created by User on 10.01.16.
//  Copyright © 2016 User. All rights reserved.
//

#import "AGViewController.h"
@import Social;


@implementation AGViewController


- (IBAction)dismissViewController:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void) viewDidLoad {
    self.imageBacground.bounds = self.view.bounds;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Twitter" style:UIBarButtonItemStylePlain target:self action:@selector(shareTapped:)];

}

- (void) viewWillAppear:(BOOL)animated {
    self.imageBacground.bounds = self.view.bounds;
    NSString *imageNamed = [NSString stringWithFormat:@"%02d.jpg",self.monthToShow];
    self.imageBacground.image = [UIImage imageNamed:imageNamed];
}

- (void)shareTapped:(id)sender {
    SLComposeViewController *composeViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composeViewController addImage:self.imageBacground.image];
    [composeViewController setInitialText:@"Chare by twitter"];
    [self presentViewController:composeViewController animated:YES completion:nil];
    
    
}


@end
