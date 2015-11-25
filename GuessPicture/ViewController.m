//
//  ViewController.m
//  GuessPicture
//
//  Created by 王长旭 on 15/11/25.
//  Copyright © 2015年 王长旭. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIButton * coverButton;
@property (strong, nonatomic) IBOutlet UIButton *imageButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
- (IBAction)zoomAction {
    CGFloat viewX;
    CGFloat viewY;
    CGFloat viewW;
    CGFloat viewH;
    if (self.coverButton.alpha == 0.0) {
        self.coverButton.alpha = 0.5f;
        viewW = self.view.frame.size.width;
        viewH = viewW;
        viewY = (self.view.frame.size.height - viewH) * 0.5;
        viewX = 0.0;
        
        [self.view bringSubviewToFront:self.imageButton];
    }else{
        
        viewW = 150.0;
        viewH = viewW;
        viewX = 85.0;
        viewY = 96.0;
        
        self.coverButton.alpha = 0.0f;
    }
    
    [UIView animateWithDuration:1.0f animations:^{
        self.imageButton.frame = CGRectMake(viewX, viewY, viewW, viewH);
    }];
}

#pragma mark - Getter

-(UIButton *)coverButton{
    if (!_coverButton) {
        _coverButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _coverButton.frame = self.view.bounds;
        _coverButton.backgroundColor = [UIColor blackColor];
        _coverButton.alpha = 0.0;
        
        [_coverButton addTarget:self action:@selector(zoomAction) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:_coverButton];
    }
    return _coverButton;
}

@end
