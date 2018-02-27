//
//  ViewController.m
//  MyScrollView
//
//  Created by KevinT on 2018-02-26.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *rootView;
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIView *greenView;
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UIView *yellowView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController
//- (IBAction)viewPanned:(UIPanGestureRecognizer *)sender {
//  CGPoint translationInView = [sender translationInView:self.view];
//  CGPoint oldCenter = sender.view.center;
//  CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
//  sender.view.center = newCenter;
//  [sender setTranslation:CGPointZero inView:self.view];
//}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
//      UIScrollView *scrollView=(UIScrollView *)self.view;
//      scrollView.contentSize=CGSizeMake(self.view.frame.size.width,self.view.frame.size.height);
//  self.scrollView.contentSize = CGSizeMake(self.rootView.bounds.size.width, self.rootView.bounds.size.height);
//  self.view=self.scrollView;
//  [UIScrollView release];
}

//-(void) loadView {
//  CGRect fullScreenRect = [[UIScreen mainScreen] applicationFrame];
//
//}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated {
//  CGPoint rootViewMoveDown100 = CGPointMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 100);
//  self.view.bounds.origin.y = self.view.bounds.origin.y + 100;
  
//  CGRect frame = CGRectMake(self.rootView.bounds.origin.x, self.rootView.bounds.origin.y + 100, self.rootView.bounds.size.width, self.rootView.bounds.size.height);
  
//  UIView *view = [[UIView alloc] initWithFrame:frame];
  UIView *view = self.rootView;
//  view.bounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 100, self.view.bounds.size.width, self.view.bounds.size.height);

//  view.backgroundColor = [UIColor whiteColor];
  
//  self.rootView = view;
  
  [self.view setNeedsDisplay];
}
@end
