//
//  MyScrollView.h
//  MyScrollView
//
//  Created by KevinT on 2018-02-26.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView
@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer *panGestureRecognizer;

- (void)viewPanned:(UIPanGestureRecognizer *)sender;
@end
