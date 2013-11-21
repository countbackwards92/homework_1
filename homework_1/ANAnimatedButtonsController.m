//
//  ANAnimatedButtonsController.m
//  homework_1
//
//  Created by Администратор on 11/21/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import "ANAnimatedButtonsController.h"

@interface ANAnimatedButtonsController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button5;

@end

@implementation ANAnimatedButtonsController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushButton1:(UIButton *)sender {

    [UIView animateWithDuration:1.0 animations:^{sender.alpha = 0.0;} completion:^(BOOL fin) {[UIView animateWithDuration:1.0 animations:^{sender.alpha = 1.0;} completion:nil];}];
}

- (IBAction)pushButton2:(UIButton *)sender {
    [UIView animateWithDuration:1.0 animations:^{sender.transform = CGAffineTransformScale(sender.transform, 0.5, 0.5);} completion:^(BOOL fin) {[UIView animateWithDuration:1.0 animations:^{sender.transform = CGAffineTransformScale(sender.transform, 2.0, 2.0);}];}];
    
}

- (IBAction)pushButton3:(UIButton *)sender {
    CGPoint old = sender.center;
    [UIView animateWithDuration:1.0 animations:^{sender.center = self.button4.center;} completion:^(BOOL fin) {[UIView animateWithDuration:1.0 animations:^{sender.center = old;}];}];
}

- (IBAction)pushButton4:(UIButton *)sender {
    CGPoint old = sender.center;
    [UIView animateWithDuration:1.0 animations:^{sender.center = self.button3.center;} completion:^(BOOL fin) {[UIView animateWithDuration:1.0 animations:^{sender.center = old;}];}];
}

- (IBAction)pushButton5:(UIButton *)sender {
    [UIView animateWithDuration:1.0 animations:^{sender.transform = CGAffineTransformMakeRotation(3.1415926/4);} completion:^(BOOL fin) {[UIView animateWithDuration:1.0 animations:^{sender.transform = CGAffineTransformMakeRotation(0);}];}];
}

- (IBAction)pushButton6:(UIButton *)sender {
    
/*    UIView *containerView = [[UIView alloc] initWithFrame:sender.frame];
    containerView.backgroundColor = [UIColor redColor];
    
//[containerView addSubview:sender];

    */
    UIButton *button10 = [[UIButton alloc]  init];
    [button10 setTitle:@"10" forState:UIControlStateNormal];
    button10.backgroundColor = [UIColor yellowColor];
    button10.bounds = sender.bounds;
    button10.transform = CGAffineTransformMakeTranslation(button10.bounds.size.width/2 + sender.frame.origin.x, button10.bounds.size.height /2 + sender.frame.origin.y);
    
  //  [sender removeFromSuperview];
  //  sender.frame = containerView.bounds;
   //     [containerView addSubview:sender];
   // [self.view addSubview:containerView];
    [UIView transitionFromView:sender toView:button10 duration:2.0 options:UIViewAnimationOptionTransitionFlipFromRight  completion:^(BOOL fin) {[UIView transitionFromView:button10 toView:sender duration:2.0 options:UIViewAnimationOptionTransitionFlipFromRight completion:nil];} ];
    
    //sender.bounds = button10.bounds;

  /*  [sender removeFromSuperview] ;
    [self.view addSubview:sender];
    CGRect bou = sender.bounds;
    bou.size.width *= 20;
    bou.size.height *= 20;
    sender.bounds = bou;*/

}
- (IBAction)pushButton7:(UIButton *)sender {
}
- (IBAction)pushButton8:(UIButton *)sender {
    [UIView animateWithDuration:1.0 animations:^{self.button1.alpha = 0.0;} completion:^(BOOL fin) {[UIView animateWithDuration:1.0 animations:^{self.button1.alpha = 1.0;} completion:nil];}];
    
    [UIView animateWithDuration:1.0 animations:^{self.button2.transform = CGAffineTransformScale(self.button2.transform, 0.5, 0.5);} completion:^(BOOL fin) {[UIView animateWithDuration:1.0 animations:^{self.button2.transform = CGAffineTransformScale(self.button2.transform, 2.0, 2.0);}];}];

    CGPoint old3 = self.button3.center;
    CGPoint old4 = self.button4.center;
    
    [UIView animateWithDuration:1.0 animations:^{self.button3.center = old4;} completion:^(BOOL fin) {[UIView animateWithDuration:1.0 animations:^{self.button3.center = old3;}];}];
    
    [UIView animateWithDuration:1.0 animations:^{self.button4.center = old3;} completion:^(BOOL fin) {[UIView animateWithDuration:1.0 animations:^{self.button4.center = old4;}];}];

    [UIView animateWithDuration:1.0 animations:^{self.button5.transform = CGAffineTransformMakeRotation(3.1415926/4);} completion:^(BOOL fin) {[UIView animateWithDuration:1.0 animations:^{self.button5.transform = CGAffineTransformMakeRotation(0);}];}];
    
}
- (IBAction)pushButton9:(UIButton *)sender {
    [UIView animateWithDuration:2.0 animations:^{sender.titleLabel.alpha = 0.0;} completion:^(BOOL fin){[sender setTitle:@"o_O" forState:UIControlStateNormal ];}];
    
    [UIView animateWithDuration:2.0 animations:^{sender.titleLabel.alpha=1.0;} completion:nil];

}

@end
