//
//  MyScrollView.m
//  MyScrollView
//
//  Created by KevinT on 2018-02-26.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
  
  self = [super initWithCoder:aDecoder];
  if ( self ){
    //pangesture
    //respond to the pan
//    self.contentSize = CGSizeMake(self.superview.bounds.size.width, self.superview.bounds.size.height);
    self.backgroundColor = [UIColor orangeColor];
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(viewPanned:)];
    [self addGestureRecognizer:panGestureRecognizer];
    
  }
  return self;
}

- (void)viewPanned:(UIPanGestureRecognizer *)sender {
  if (sender.state == UIGestureRecognizerStateBegan || sender.state == UIGestureRecognizerStateChanged) {
    CGPoint translationInView = [sender translationInView:self];
//    CGPoint oldCenter = sender.view.center;
//    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
//
//    if (newCenter.x > self.contentSize.width) {
//
//    }
//    sender.view.center = newCenter;
    
    CGFloat myNewYalue = sender.view.bounds.origin.y - translationInView.y;
//    CGFloat myHeightYValue = sender.view.bounds.origin.y + translationInView.y;
    if ( myNewYalue < 0 ){
      myNewYalue = 0;
    }
    
    if (myNewYalue > self.contentSize.height - self.frame.size.height) {
      myNewYalue = self.contentSize.height - self.frame.size.height;
    }
    
    sender.view.bounds = CGRectMake(sender.view.bounds.origin.x, myNewYalue, sender.view.bounds.size.width, sender.view.bounds.size.height);
    NSLog(@"%@", NSStringFromCGPoint(translationInView));
    [sender setTranslation:CGPointZero inView:self];
    
  }

}

@end
