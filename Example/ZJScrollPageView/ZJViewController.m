//
//  ZJViewController.m
//  ZJScrollPageView
//
//  Created by Michael Wu on 09/26/2019.
//  Copyright (c) 2019 Michael Wu. All rights reserved.
//

#import "ZJViewController.h"
#import <ZJScrollPageView.h>


@implementation UIColor(Random)

+ (UIColor *)randomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

@end


@interface ZJViewController ()<ZJScrollPageViewDelegate>

@property (nonatomic, strong) ZJScrollSegmentView *segmentView;

@property (nonatomic, strong) ZJContentView *contentView;


@end

@implementation ZJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    ZJSegmentStyle *style = ({
        style = [[ZJSegmentStyle alloc]init];
        style.showLine = YES;
        style.stationaryLineWidth = YES;
        style.scrollLineCornerRadius = 1.f;
        style;
    });
    
    _segmentView = ({
        ZJScrollSegmentView *segmentView = [[ZJScrollSegmentView alloc]initWithFrame:CGRectMake(0, 44, UIScreen.mainScreen.bounds.size.width, 44) segmentStyle:style delegate:self titles:@[@"第一个",@"第二个阿斯达四大啊打算",@"第三个",@"第四个",@"第五个",@"第六个",@"第七个",@"第八个",@"第九个",@"第十个"] titleDidClick:^(ZJTitleView *titleView, NSInteger index) {
                       
            [_contentView setContentOffSet:CGPointMake(index*UIScreen.mainScreen.bounds.size.width, 0) animated:YES];
        }];
        [self.view addSubview:segmentView];
        segmentView;
    });
    
    _contentView = ({
        ZJContentView *contentView = [[ZJContentView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_segmentView.frame), UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height - 44) segmentView:_segmentView parentViewController:self delegate:self];
        contentView.needObserveMemoryWarning = NO;
        [self.view addSubview:contentView];
        contentView;
    });
    
    
    
}

- (NSInteger)numberOfChildViewControllers {
    
    return 10;
}

- (UIViewController<ZJScrollPageViewChildVcDelegate> *)childViewController:(UIViewController<ZJScrollPageViewChildVcDelegate> *)reuseViewController forIndex:(NSInteger)index {
    
    if (!reuseViewController) {
        reuseViewController = [[UIViewController alloc]init];
        reuseViewController.view.backgroundColor = [UIColor randomColor];
    }
    return reuseViewController;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


