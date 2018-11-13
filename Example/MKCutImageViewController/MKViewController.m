//
//  MKViewController.m
//  MKCutImageViewController
//
//  Created by maqingbo2014 on 11/12/2018.
//  Copyright (c) 2018 maqingbo2014. All rights reserved.
//

#import "MKViewController.h"
@import MKCutImageViewController;

@interface MKViewController ()
{
    UIImageView *imageView;
}
@end

@implementation MKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    imageView = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    MKCutImageViewController *vc = [[MKCutImageViewController alloc]initWithImage:[UIImage imageNamed:@"776D971C36F80E020DB9893F1037B677"] WithProportion:1 WithComplete:^(UIImage *image) {
        imageView.image = image;
    }];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
