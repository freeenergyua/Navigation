//
//  ViewController.m
//  NavigationRW
//
//  Created by User on 10.01.16.
//  Copyright © 2016 User. All rights reserved.
//

#import "ViewController.h"
#import "AGViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *monthLabel;
@property (weak, nonatomic) IBOutlet UISlider *monthSlider;
- (IBAction)sliderValueChanged:(id)sender;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.monthLabel.text = [NSString stringWithFormat:@"%d", (int)self.monthSlider.value];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderValueChanged:(id)sender {
    self.monthLabel.text = [NSString stringWithFormat:@"%d", (int)self.monthSlider.value];
}
    //второй Go2 не работает потому что нету передачи данных как у первой кнопки в методе prepareForSegue
    //первый Go работает
- (IBAction)goTapped:(id)sender {
//    // первый вариант  работает с методом prepareForSegue
//    [self performSegueWithIdentifier:@"GoToPaper" sender:self];
    
    //второй вариант не работает с навигейшн контроером
    AGViewController* agViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AGViewController"];
    agViewController.monthToShow = self.monthLabel.text.intValue;
    [self.navigationController pushViewController:agViewController animated:YES];
    
//    [self presentViewController:agViewController animated:YES completion:nil];//работает без навигейшн вк

}

- (IBAction)close:(UIStoryboardSegue*)segue {
    NSLog(@"closed");
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"GoToPaper"]) {
        AGViewController *agViewController = (AGViewController*)segue.destinationViewController;
        agViewController.monthToShow = self.monthLabel.text.intValue;
        
    }
}
@end
