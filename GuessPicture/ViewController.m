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
    if (self.coverButton.alpha == 0.0) {
        self.coverButton.alpha = 0.5f;
    }else{
        self.coverButton.alpha = 0.0f;
    }
}

#pragma mark - Getter

-(UIButton *)coverButton{
    if (!_coverButton) {
        _coverButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _coverButton.frame = self.view.bounds;
        _coverButton.backgroundColor = [UIColor blackColor];
        _coverButton.alpha = 0.0;
        
        [self.view addSubview:_coverButton];
    }
    return _coverButton;
}

@end
