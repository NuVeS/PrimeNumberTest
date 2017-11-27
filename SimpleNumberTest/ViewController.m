//
//  ViewController.m
//  SimpleNumberTest
//
//  Created by Максуд on 27.11.2017.
//  Copyright © 2017 Максуд. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIView *boxView;

@end

//1000000000000000000

@implementation ViewController


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSUInteger i = 1000000000000000000;
    self.contentLabel.text = [NSString stringWithFormat:@"%ld", (long)i];
    while (true) {
        BOOL isPrime = [self checkPrimeNumber:i];
        if(isPrime){
            self.contentLabel.text = [NSString stringWithFormat:@"%ld", (long)i];
        }
        NSLog(@"%ld - %d", i, isPrime);
        i++;
    }
}

- (BOOL)checkPrimeNumber: (NSInteger)n{
    if(n <= 1) {return false;}
    if(n <= 3) {return true;}
    
    NSInteger i = 2;
    while (i * i <= n) {
        if(n % i == 0){
            return false;
        }
        i++;
    }
    return true;
                    
}

- (IBAction)animate:(id)sender {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.autoreverses = YES;
    animation.repeatCount = 1;
    animation.fromValue = @1;
    animation.toValue = @0;
    animation.duration = 1.5;
    [self.boxView.layer addAnimation:animation forKey:nil];
}




@end
