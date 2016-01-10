//
//  AGViewController.h
//  NavigationRW
//
//  Created by User on 10.01.16.
//  Copyright © 2016 User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AGViewController : UIViewController
- (IBAction)dismissViewController:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageBacground;
@property (weak, nonatomic) IBOutlet UIButton *closeButton;
@property (weak, nonatomic) IBOutlet UIButton *backSegueEnwind;
@property (assign,nonatomic) int monthToShow;
@end
